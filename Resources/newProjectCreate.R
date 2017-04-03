date <- Sys.Date()
#check if tree program is installed, to prodice final schema printout
Sys.which("tree") != "" 

setwd("~/")
#getwd()
(mainDir <- getwd())
subDirParent <- "Projects"
#Customize the following line with your Project Name
subDirProjectName <- paste0(date,"_deleteme")

# Create folder structure
level <- data.frame(level1 = c("data", "data", "doc", "results", "results", "tmp", "code"),
					level2 = c("clean", "raw", "paper", "figures", "pictures", "", "")
				   )

# Create folders on system
for (i in 1:7) {
	dir.create(file.path(mainDir, subDirParent, subDirProjectName, level[i, 1], level[i, 2]), recursive= TRUE, showWarnings = FALSE)
}

# Setup WD on Project folder
setwd(file.path(mainDir, subDirParent))
system(paste("tree",subDirProjectName))

# Setup WD on new created folder
setwd(file.path(mainDir, subDirParent, subDirProjectName))
