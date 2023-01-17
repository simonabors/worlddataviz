library(tidyverse)

df <- read_csv("C:\\Users\\johnb\\OneDrive - The Ohio State University\\John Stuff\\.OSU\\..World Data Visualization Contest\\World Dataviz Prize 2023 - What Just Happened.csv",
               na = "-")

df2 <- pivot_longer(df, cols = `2009`:`2021`, names_to = "year", values_to = "value")
df2 <- df2 %>%
  select(-c(`source name`,`source link`)) %>%
  relocate(year:value, .after = data) %>%
  rename("ten_year_change" = `10 year change`)

write_csv(df2, file = "C:\\Users\\johnb\\OneDrive - The Ohio State University\\John Stuff\\.OSU\\..World Data Visualization Contest\\World Dataviz Prize 2023 - What Just Happened_pivot.csv")
