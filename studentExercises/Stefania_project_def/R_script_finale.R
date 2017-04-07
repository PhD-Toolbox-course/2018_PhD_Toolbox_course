#python to build the data frame from 18 data files
#####

#install tidyverse package (once) 
install.packages("tidyverse")

#load the libraries
library(tidyverse)
library(gridExtra)

#import data and read
cov_sc35  <- read.csv("/media/stefania/DATA/sync/files_analisi_genomi/all.cov.bp.sc35.txt", header=FALSE, sep="\t", stringsAsFactors = FALSE)
#ggplot(data = cov_sc35)

colnames(cov_sc35)[1] <- "type"
colnames(cov_sc35)[2] <- "isolate"
colnames(cov_sc35)[3] <- "pos_bp"
colnames(cov_sc35)[4] <- "n_of_reads"

#check imported data
is.vector("n_of_reads")
is.vector("type")
dim(cov_sc35)
colnames(cov_sc35)


### How many reads cover scaffold 35 in S vs T isolates?
##group by "type" and create the background
reads_counts <- cov_sc35 %>%
  group_by(type, isolate) %>%
  summarize(sum_reads = sum(n_of_reads))
ggplot(data = reads_counts)
#add axes layer
sc35_cov_plot <- ggplot(data = reads_counts,
                        aes(x = type, y = sum_reads))
#add graph layer: total n° of reads in S isolates vs T isolates
sc35_cov_plot + geom_boxplot(aes(group = type)) + 
  geom_point(aes(group = type, color = isolate, shape = isolate), size = 4) +
  scale_shape_manual(values = c(0:17)) +
  labs(title = 'Total reads mapping on scaffold 35',
       x = 'Type of isolate', y = 'Total n° of reads') +
  theme_minimal()



### How are the reads distriduted along the scaffold 35 in the different iseolates? 
### Are there completely uncovered bases?

#Group by isolate and by position in the scaffold
#filter by type of isolate, S first, T later, in order to obtain separate graphics.
reads_pos_S <- cov_sc35 %>%
  filter(type == "S") %>%
  group_by(pos_bp, isolate, type) %>%
  summarize(pos_reads = n_of_reads)

reads_pos_T <- cov_sc35 %>%
  filter(type == "T") %>%
  group_by(pos_bp, isolate, type) %>%
  summarize(pos_reads = n_of_reads)

#plot the number of reads per each position in each isolate

##S isolates
sc35_cov_pos_plot_S <- ggplot(data = reads_pos_S,
                              aes(x = pos_bp, y = pos_reads))+
  geom_line(aes(group = isolate, color = isolate)) + 
  facet_grid(isolate ~., scales = "free_y") +
  labs(title = 'Sensitive isolates',
       x = 'Position in scaffold 35 (bp)',
       y = '') +
  theme(axis.text.x = element_text(colour="grey20", size=8,
                                   angle=0, hjust=.5, vjust=.5),
        axis.text.y = element_text(colour="grey20", size=8),
        text=element_text(size=12, family="Arial")) +
  guides(color = "none")


##T isolates
sc35_cov_pos_plot_T <- ggplot(data = reads_pos_T,
                              aes(x = pos_bp, y = pos_reads)) + 
  geom_line(aes(group = isolate, color = isolate)) + 
  facet_grid(isolate ~., scales = "free_y", as.table = FALSE) +
  labs(title = 'Tolerant isolates',
       x = 'Position in scaffold 35 (bp)',
       y = 'n° of reads') +
  theme(axis.text.x = element_text(colour="grey20", size=8,
                                   angle=0, hjust=.5, vjust=.5),
        axis.text.y = element_text(colour="grey20", size=8),
        text=element_text(size=12, family="Arial")) +
  guides(color = "none")


##combine the two plots (T and S) in one single figure.
grid.arrange(sc35_cov_pos_plot_T,  sc35_cov_pos_plot_S, ncol=2)



