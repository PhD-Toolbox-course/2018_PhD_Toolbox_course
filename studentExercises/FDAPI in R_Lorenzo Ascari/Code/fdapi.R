#Import dataset from excel

library(readxl)
fda2pi20 <- read_excel("~/Dottorato Lorenzo/FDAPI in R/Data/Processed/fda2pi20.xlsx", col_types = c("numeric", "numeric", "numeric", "numeric", "numeric", "blank", "blank", "blank", "blank", "blank", "blank"))

#Import dataset from excel

library(readxl)

fda2pi20 <- read_excel("~/Dottorato Lorenzo/FDAPI in R/Data/Processed/fda2pi20.xlsx", col_types = c("numeric", "numeric", "numeric", "numeric", "numeric", "blank", "blank", "blank", "blank", "blank", "blank"))
View(fda2pi20)

fda2pi20_pbs <-  read_excel("~/Dottorato Lorenzo/FDAPI in R/Data/Processed/fda2pi20_pbs.xlsx", col_types = c("numeric", "numeric", "numeric", "numeric", "numeric", "blank", "blank", "blank", "blank", "blank", "blank"))
View(fda2pi20_pbs)

#carico librerie

library(tidyverse)

#modifico il dataframe per i grafici

fda2pi20_gather <- fda2pi20 %>%
  gather (Alive_Cell_Count, Dead_Cell_Count, -ImageNumber)%>%
  rename(Count_type = Alive_Cell_Count, Pollen_Count = Dead_Cell_Count)

fda2pi20_pbs_gather <- fda2pi20_pbs %>%
  gather (Alive_Cell_Count, Dead_Cell_Count, -Image_Number)%>%
  rename(Count_type = Alive_Cell_Count, Pollen_Count = Dead_Cell_Count)

#grafici a barre banali

library(ggplot2)
hist_plot <- ggplot(fda2pi20_gather, aes(x = Count_type, y = Pollen_Count, fill = Count_type, colour = Count_type))

#hist_plot + geom_bar(stat = "identity") + theme_grey()# modello
hist_plot + geom_bar(stat = "identity", size = 1, na.rm = TRUE, width = 0.5) + theme_classic() +
  labs(title =  'Without PBS', 
       x = 'Category',
       y = 'Counts')


hist_plot <- ggplot(fda2pi20_pbs_gather, aes(x = Count_type, y = Pollen_Count, fill = Count_type, colour = Count_type))

#hist_plot + geom_bar(stat = "identity") + theme_grey()# modello
hist_plot + geom_bar(stat = "identity", size = 1, na.rm = TRUE, width = 0.5) + theme_classic() +
  labs(title =  'With PBS', 
       x = 'Category',
       y = 'Counts')