#HSLIDE

Hello, *World*!

Hello, **World**!

Hello, **_World_**!

Some Markdown text with <span style="color:red">some text</span>.


#VSLIDE

1

#VSLIDE

2

#VSLIDE

3

#VSLIDE

```r
library(ggplot2)

centre <- function(x, type, ...) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
}
```

#HSLIDE

The End :)
