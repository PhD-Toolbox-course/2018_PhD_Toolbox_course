date <- Sys.Date()
#check if tree program is installed, to prodice final schema printout
Sys.which("tree") != "" 

setwd("~/")
#getwd()
(mainDir <- getwd())
subDirParent <- "Projects"
#Customize the following line with your Project Name
subDirProjectName <- paste0(date,"_Qiime_MaarjAM")

#DATA PATH
dir.create(file.path(mainDir, subDirParent, subDirProjectName, "data", "raw"), recursive= TRUE, showWarnings = TRUE)
dir.create(file.path(mainDir, subDirParent, subDirProjectName, "data", "clean"), recursive= TRUE, showWarnings = TRUE)
#DOC PATH
dir.create(file.path(mainDir,subDirParent,subDirProjectName,"doc","paper"), recursive= TRUE, showWarnings = TRUE)
#CODE PATH
dir.create(file.path(mainDir,subDirParent,subDirProjectName,"code"), recursive= TRUE, showWarnings = TRUE)
#SCRATCH/tmp PATH
dir.create(file.path(mainDir,subDirParent,subDirProjectName,"tmp"), recursive= TRUE, showWarnings = TRUE)
#RESULTS PATH
dir.create(file.path(mainDir,subDirParent,subDirProjectName,"results", "figures"), recursive= TRUE, showWarnings = TRUE)
dir.create(file.path(mainDir,subDirParent,subDirProjectName,"results", "pictures"), recursive= TRUE, showWarnings = TRUE)

setwd(file.path(mainDir, subDirParent))
system(paste("tree",subDirProjectName))

setwd(file.path(mainDir, subDirParent, subDirProjectName))
