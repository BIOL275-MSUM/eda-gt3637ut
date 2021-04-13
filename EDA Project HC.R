
# load packages  ----------------------------------------------------------

library(tidyverse)
library(auk)


citation()

R.Version()

RStudio.Version()

library(auk)
# path to the ebird data file
f_ebd_in <- "Data/ebd_merlin_relFeb-2021/ebd_merlin_relFeb-2021.txt"
f_smp_in <- "Data/ebd_sampling_relFeb-2021/ebd_sampling_relFeb-2021.txt"
# output text file
f_ebd_out <- "Data/ebd_filtered_merlin.txt"
f_smp_out <- "Data/edaproj_filtered_smp.txt"
ebird_data <- f_ebd_in %>% 
  # 1. reference file
  auk_ebd(file_sampling = f_smp_in) %>% 
  # 2. define filters
  auk_bcr( bcr = 11) %>% 
  auk_date(date = c("*-05-01", "*-06-30")) %>% 
  auk_time(start_time = c("05:00", "19:00")) %>%
  auk_distance(distance = c(0,4)) %>%
  auk_complete() %>%
  # 3. run filtering
  auk_filter(file = f_ebd_out, file_sampling = f_smp_out) %>% 
  # 4. read text file into r data frame
  read_ebd()






