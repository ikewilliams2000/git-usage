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
