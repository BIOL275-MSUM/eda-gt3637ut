
# load packages  ----------------------------------------------------------

library(tidyverse)
library(auk)
library(sf)
library(devtools)



# filter ebird data -------------------------------------------------------

# check if data folder exists, if not then create it
if(!dir.exists("Data")) dir.create("Data")

# path to the ebird data file
f_ebd_in <- "Data/ebd_merlin_relFeb-2021/ebd_merlin_relFeb-2021.txt"
f_smp_in <- "Data/ebd_sampling_relFeb-2021/ebd_sampling_relFeb-2021.txt"

# output text file
f_ebd_out <- "Data/ebd_filtered_merlin.txt"
f_smp_out <- "Data/edaproj_filtered_smp.txt"
f_awk <- "Data/merlin_awk_file.txt"

# create a toggle switch for executing the filter
# that way the next code chunk runs but skips the output if it already exists
execute_filter <- !all(file.exists(c(f_ebd_out, f_smp_out)))

# create reference to ebird data file and add filters
auk_ebd(
  file = f_ebd_in, 
  file_sampling = f_smp_in
) %>% 
  auk_bcr( bcr = 11) %>% 
  auk_date(date = c("*-05-01", "*-06-30")) %>% 
  auk_time(start_time = c("05:00", "19:00")) %>%
  auk_distance(distance = c(0,4)) %>%
  auk_complete() %>% 
  auk_filter(                      # filter the eBird file using AWK
    file = f_ebd_out,              # add an ebird data output path
    file_sampling = f_smp_out,     # add a sampling data output path
    awk_file = f_awk,              # this is required if execute = FALSE
    execute = execute_filter       # if  output already exists, don't execute
  )


# read filtered data ------------------------------------------------------

# read files
ebd <- read_ebd("Data/ebd_filtered_merlin.txt")
smp <- read_sampling("Data/edaproj_filtered_smp.txt")


# Making a map  -----------------------------------------------------------
ebd_sf <- st_as_sf(ebd, coords=c("latitude","longitude"))
smp_sf <- st_as_sf(smp, coords=c("latitude","longitude"))

states <- map_data("state") %>% 
  as_tibble() %>%
  st_as_sf(coords=c("long", "lat")) %>%
  print()
ggplot(states)+
  geom_sf()



# citations ---------------------------------------------------------------

citation()
R.Version()
RStudio.Version()

# GDAL/OGR contributors (2021). GDAL/OGR Geospatial Data Abstraction
# software Library. Open Source Geospatial Foundation. URL https://gdal.org
