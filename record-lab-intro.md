## R packages

All components of R come in packages (compressed files with code and data inside)
that are stored in one of two places on a computer: (1) a user's personal library
OR (2) in a system-wide library available to all users.  You'll be placing packages
in your personal library as you don't have administrative credentials on the Mac Mini.

When R is installed it comes with 'base' packages for working with files, simple
graphing, statistics, and working with the operating system (likely macOS in your case).
When you start a new session (aka "instance") these 'base' packages are loaded
from your library.  Other packages, like those you download from tidyverse or elsewhere, can
be loaded with the R command `library`

```
library(foo)
library(boo)
library(tidyverse)
```

There are many-many-many-many R packages out there.  Most, but not all, are
uploaded by volunteers to CRAN (comprehensive R archive network).  Brace yourself
before looking...

[CRAN](https://cran.r-project.org/web/packages/available_packages_by_name.html)

Other packages are distributed from other places - notably github like Bigelow's
account at [BLOS Github](https://github.com/BigelowLab) At Bigelow's gihub site there are
100 repositories of packages (for a variety of languages like R, Python, java, etc).
Some are public for all to see and some are private.

Within an R session (like a session within RStudio) you can install packages using ...

```
# see https://cran.r-project.org/web/packages/RColorBrewer/index.html
install.packages("RColorBrewer")
```

... but generally we have installed all that you need already. If you do need to install
a package on your own, you may be prompted to select one of the many-many-many
CRAN mirror servers which will then serve up the package you want to download.
I usually select one that is physically close (like eastern North America).  If you
need help please just ask!


## Tidy R

We use R packages [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html),
[magrittr](https://cran.r-project.org/web/packages/magrittr/index.html) and
[readr](https://cran.r-project.org/web/packages/readr/index.html)  They belong to
a large family of packages, called the `tidyverse`, designed to play well together.
Here is the link to [tidyverse](https://www.tidyverse.org/)


It's important to keep in mind that as in any language there are different ways to skin a cat.
The tidyverse team thinks they have the best way which is why they say on their front page
"tidyverse is an opinionated collection of R packages designed for data science".

After you get a chance to check out tidyverse you might want to try out a
[free online tutorial](https://www.datacamp.com/courses/introduction-to-the-tidyverse)

If you get stumped you can always google, but I also suggest you give RSeek.org a try ...

http://rseek.org/?q=tidyr+tutorial

In fact, be sure to add [RSeek](http://rseek.org) as one of your browser's search engines.


## Rasters in R with the raster package

The [raster](https://CRAN.R-project.org/package=raster) is one of the R's answers
to handling gridded spatial data. it comes with a nice
[vignette](https://cran.r-project.org/web/packages/raster/vignettes/Raster.pdf)
