library(ggplot2)

sods_data <- read.csv("data/stackoverflow-git-data.csv")

g <- ggplot (
data = sods _data ,
mapping = aes ( x = year , y = percentage ) ) +
geom _ point () +
geom _ smooth ( method = "lm", colour = " darkgrey ") +
geom _ text (
aes ( x = 2020 , y = 82.8 , label = " only GitHub ") ,
size = 3 ,
nudge _x = 0.2 ,
nudge _y = -6) +
labs (
x = " Year ",
y = " Percentage who used git") +
ylim (c (0 ,100) ) +
theme _bw ()

sink(file = 'out/regression-summary.txt')
summary(lm(percentage ~ year, sods_data))
sink

> sessionInfo()
R version 4.0.3 (2020-10-10)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Catalina 10.15.7

Matrix products: default
BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/4.0/Resources/lib/libRlapack.dylib

locale:
[1] en_GB.UTF-8/en_GB.UTF-8/en_GB.UTF-8/C/en_GB.UTF-8/en_GB.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
 [1] Rcpp_1.0.6        pillar_1.6.3      compiler_4.0.3    hrbrthemes_0.8.0 
 [5] tools_4.0.3       extrafont_0.18    digest_0.6.27     evaluate_0.14    
 [9] lifecycle_1.0.1   tibble_3.1.5      gtable_0.3.0      pkgconfig_2.0.3  
[13] rlang_0.4.11      DBI_1.1.1         xfun_0.26         Rttf2pt1_1.3.10  
[17] dplyr_1.0.7       knitr_1.33        systemfonts_1.0.4 generics_0.1.0   
[21] gdtools_0.2.4     vctrs_0.3.8       grid_4.0.3        tidyselect_1.1.1 
[25] glue_1.4.2        R6_2.5.0          fansi_0.4.1       rmarkdown_2.11   
[29] ggplot2_3.3.5     purrr_0.3.4       extrafontdb_1.0   magrittr_2.0.1   
[33] scales_1.1.1      ellipsis_0.3.2    htmltools_0.5.1.1 assertthat_0.2.1 
[37] colorspace_2.0-0  utf8_1.1.4        tinytex_0.34      munsell_0.5.0    
[41] crayon_1.4.1  
