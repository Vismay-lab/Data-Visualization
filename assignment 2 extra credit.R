# Assignment 2 Question 1 EXTRA CREDIT
# making cartogram
# importing essential libraries
library(cartogram)
library(sf)            
library(raster)
library(dplyr)
library(spData)        # we will be using a dataset from this library to do the cartogram
library(tmap)          # tmap allows the map to be generated with the sample code and consists of spatial data formats 
library(leaflet)       # leaflet library and cartogram library almost has similat puruse
library(ggplot2)

# library spData consists of datasets world and worldbank_df with the help of which we 
# can generate the cartogram 
# here we have declared africa as object and we will filter
# the attributes from it and generate the plot of african continent
# using dplyr we select the attributes and set the latitude and longitude 


africa = world %>% filter(continent == "Africa", !is.na(iso_a2))  %>%   
  left_join(worldbank_df, by = "iso_a2") %>% 
  dplyr::select(name, subregion, gdpPercap, HDI, pop_growth) %>%
  st_transform("+proj=aea +lat_1=20 +lat_2=-23 +lat_0=0 +lon_0=25")

plot(africa["HDI"])                                       # plotting the graph based on human development index based on the region    
tm_shape(africa) + tm_polygons("HDI")                     # It specifies spatial data object and allows to use multiple shape objects within one plot
ggplot(africa) + geom_sf(aes(geometry=geom, fill=HDI))

tm_shape(alaska) + tm_polygons("total_pop_qo")
ggplot(alaska) + geom_sf(aes(geometry=geom, fill=total_pop_qo))


