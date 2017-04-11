#Import dataset from excel

library(readxl)
pv <- read_excel("~/Dottorato Lorenzo/Pollen viab in R_Lorenzo Ascari/Data/Processed/pv.xlsx", col_types = c("numeric", "numeric", "numeric", "numeric", "numeric", "blank", "blank", "blank", "blank", "blank", "blank"))

#Import dataset from excel

library(readxl)

pv <- read_excel("~/Dottorato Lorenzo/Pollen viab in R_Lorenzo Ascari/Data/Processed/pv.xlsx", col_types = c("numeric", "numeric", "numeric", "numeric", "numeric", "blank", "blank", "blank", "blank", "blank", "blank"))
View(pv)

pv_pbs <-  read_excel("~/Dottorato Lorenzo/Pollen viab in R_Lorenzo Ascari/Data/Processed/pv_pbs.xlsx", col_types = c("numeric", "numeric", "numeric", "numeric", "numeric", "blank", "blank", "blank", "blank", "blank", "blank"))
View(pv_pbs)

#carico librerie

library(tidyverse)

#modifico il dataframe per i grafici

pv_gather <- pv %>%
  gather (Alive_Cell_Count, Dead_Cell_Count, -ImageNumber)%>%
  rename(Count_type = Alive_Cell_Count, Pollen_Count = Dead_Cell_Count)

pv_pbs_gather <- pv_pbs %>%
  gather (Alive_Cell_Count, Dead_Cell_Count, -Image_Number)%>%
  rename(Count_type = Alive_Cell_Count, Pollen_Count = Dead_Cell_Count)

#grafici a barre banali

library(ggplot2)
hist_plot <- ggplot(pv_gather, aes(x = Count_type, y = Pollen_Count, fill = Count_type, colour = Count_type))

#hist_plot + geom_bar(stat = "identity") + theme_grey()# modello
hist_plot + geom_bar(stat = "identity", size = 1, na.rm = TRUE, width = 0.5) + theme_classic() +
  labs(title =  'Without PBS', 
       x = 'Category',
       y = 'Counts')


hist_plot <- ggplot(pv_pbs_gather, aes(x = Count_type, y = Pollen_Count, fill = Count_type, colour = Count_type))

#hist_plot + geom_bar(stat = "identity") + theme_grey()# modello
hist_plot + geom_bar(stat = "identity", size = 1, na.rm = TRUE, width = 0.5) + theme_classic() +
  labs(title =  'With PBS', 
       x = 'Category',
       y = 'Counts')