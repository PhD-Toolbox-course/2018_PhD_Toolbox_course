date <- Sys.Date()

# check if tree program is installed, to prodice final schema printout
Sys.which("tree") != "" 

# Set WD
setwd("~/")

# getwd()
mainDir <- getwd()

# Name of the folder containing your projects
subDirParent <- "Projects"

# Customize the following line with your Project Name
subDirProjectName <- paste0(date,"_Your_Project_Cool_Name")

# Create folder structure
level <- data.frame(level1 = c("data", "data", "doc", "results", "results", "tmp", "code"),
					level2 = c("clean", "raw", "paper", "figures", "pictures", "", "")
				   )

# Create folders on system
for (i in 1:nrow(level)) {
	dir.create(file.path(mainDir, subDirParent, subDirProjectName, level[i, 1], level[i, 2]), recursive = TRUE, showWarnings = FALSE)
}

# Setup WD on Project folder
setwd(file.path(mainDir, subDirParent))

# Check folder structure
system(paste("tree", subDirProjectName))

# Setup WD on new created folder
setwd(file.path(mainDir, subDirParent, subDirProjectName))
