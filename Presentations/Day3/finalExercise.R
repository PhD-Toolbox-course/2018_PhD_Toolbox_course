# Download data
download.file("https://ndownloader.figshare.com/files/1797870", "exercise.xls")
# Libraries
library("tidyverse")
library("ggthemes")

# Read data in
x <- readxl::read_excel("exercise.xls", sheet = 2)

# Group the data based on day and time
xx <- x %>% group_by(Days, `Time of day`)

# Summarize temperature
tm <- xx %>% summarize(temp_mean = mean(`Temperature (°C)`),
				 temp_sd = sd(`Temperature (°C)`))

# Plot temperature variation
g <- ggplot(data = tm, aes(x = Days, y = temp_mean, group = `Time of day`))
g + geom_point() +
	geom_line() +
	facet_grid(~`Time of day`) +
	theme_few() +
	labs(title = "Temperature variation",
		 x = "Days",
		 y = "Mean temperature") +
	theme(plot.title = element_text(hjust = 0.5))

#=======================

# Summarize abundance of insects
ai <- xx %>% summarize(ins_mean = mean(`Abundance of insects `),
				 	   ins_sem = sd(`Abundance of insects `) / sqrt(length(Replicates)))

# Plot 
limits <- aes(ymax = ins_mean + ins_sem, ymin = ins_mean - ins_sem)

g <- ggplot(data = ai, aes(x = Days, y = ins_mean, group = `Time of day`))
g + geom_errorbar(limits, width=0.2, size = .5, color = "grey") +
	geom_point() +
	geom_line() +
	facet_grid(`Time of day`~.) +
	theme_tufte() +
	labs(title = "Abundance of insects",
		 x = "Days",
		 y = "Mean of insects") +
	theme(plot.title = element_text(hjust = 0.5))

#=======================

# Summarize by plant density and abundance of insects
xx <- x %>% mutate(dr = paste0(Days, "_", `Time of day`)) %>% group_by(dr) %>% summarize(val = mean(`plant density `) / mean(`Abundance of insects `))
xx <- xx[c(1,2,1)]
names(xx) <- c("dr", "val", "dr1")
xx <- xx %>% separate(dr1, c("day", "time"), "_")

# Plot
g <- ggplot(data = xx, aes(x = dr, y = val, color = time))
g + geom_point() + 
	scale_colour_economist() +
	geom_line(aes(group = time)) +
	theme_economist() +
	coord_polar() + 
#	facet_grid(~time) +
	theme(axis.text.x = element_blank(),
		  axis.text.y = element_blank(),
		  plot.title = element_text(hjust = .5)) +
	xlab("") +
	ylab(expression("Plant density * Abundance of insects"^-1)) +
	ggtitle("Insect density")

