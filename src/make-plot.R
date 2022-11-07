library(ggplot2)

sods_data <- read.csv("data/stackoverflow-git-data.csv")

g <- ggplot(sods_data, aes(x = year, y = percentage))+
              geom_point()+
              geom_smooth(method ='lm')+
  geom_text(aes(x = 2020, y = 82.8,
                label = "only Github"),
            nudge_x = 0.2, nudge_y = -4)+
  labs(x = 'Percentage', y = 'Users who used git',
       subtitle = 'Data from stackoverflow developer survey',
       title = 'Git usage has increased')

ggsave(filename = 'out/git-usage.png',
       plot = g,
       height = 7.4,
       width = 10.5,
       units = 'cm')

sink(file = 'out/regression-summary.txt')
summary(lm(percentage ~ year, sods_data))
sink
