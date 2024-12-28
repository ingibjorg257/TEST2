library(tidyverse)
library(here)

print("Hello, World!")

gss_cat

TESTtable<-gss_cat %>%
  group_by(marital) %>%
  summarise(meant_tv_hour= mean(tvhours, na.rm=T))

write_csv(TESTtable, here("TV_TEST.csv"))

