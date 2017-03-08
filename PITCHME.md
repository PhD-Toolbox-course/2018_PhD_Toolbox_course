#HSLIDE

Hello, World!

#VSLIDE

1

#VSLIDE

2

#VSLIDE

3

#VSLIDE

// R
library(ggplot2)

centre <- function(x, type, ...) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
}

#HSLIDE

The End :)
