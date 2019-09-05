# Record-Lab-Guides
A collection of guides for working in the Record Lab and Computational Ecology Lab


### Online books/courses

+ [Rspatial.org](https://rspatial.org)

+ [Geocomputation with R](https://geocompr.robinlovelace.net/)

+ [Open Geo Hub](https://opengeohub.org/course)

### Cheatsheets

+ [Base plotting, ggplot2, markdown](https://www.r-graph-gallery.com/cheatsheet/)

+ [RStudio's tidyverse](https://www.rstudio.com/resources/cheatsheets/)

+ [Racine's Raster](https://rpubs.com/etiennebr/visualraster)

+ [Rowlingson's Spatial](https://www.maths.lancs.ac.uk/~rowlings/Teaching/UseR2012/cheatsheet.html)

+ [Boysel's General/Spatial](https://gist.github.com/sboysel/fc661f26ef51eae6377b)

+ [Coordinate Reference Systems](https://www.nceas.ucsb.edu/~frazier/RSpatialGuides/OverviewCoordinateReferenceSystems.pdf)

### Interesting blogs

+ [Advice-to-young-and-old-programmers](https://r-posts.com/advice-to-young-and-old-programmers-a-conversation-with-hadley-wickham/)

### Error trapping

#### try()

```
x <- try(log("a"))
if (inherits(x, "try-error")) {
  stop("oooof!")
}
```

#### tryCatch()

+ [discussion](https://stackoverflow.com/questions/12193779/how-to-write-trycatch-in-r)

+ [rsangole.netlify post](https://rsangole.netlify.com/post/try-catch/)
