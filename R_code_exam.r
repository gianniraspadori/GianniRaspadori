## R project for "Spatial ecology in R" exam.
## This spatial-ecological monitoring project wants to analyze the change during a decade of FCOVER (fraction of green vegetetion cover) in the world; From 2013 to 2023.
## First of all I want to recall the packages I will use. I have already used these packages so I do not need to install them.

library(terra)
library(ncdf4)
library(raster)
## I downloaded some images I will work with from Copernicus' dataset , now I need to set the directory so I can import those images on R

setwd(C:/Users/User/OneDrive/Desktop)

##I corrected the file path so R can read it by changing "\" with "/"
##Now I can import the images and rename them. After I plot them

fcover14<-rast("")
plot(fcover14)
fcover18<-rast("")
plot(fcover18)
fcover23<-rast("")
plot(fcover23)

##now I have too many images for each dataset to work with, so I will take just the first image for each dataset
## They show the Leaf Area Index (LAI) during a decade (2014,2018,2023)

lai14<-fcover14[[1]]
plot(lai14)

lai18<-fcover18[[1]]
plot(lai18)

lai23<-fcover23[[1]]
plot(lai23)

## those are images of the entire world , but I want to focus my project on the Amazon region
## So I need to the coordinates to border just the area I will use

lat_min=15000
lat_max=23000
lon_min=35000
lon_max=45000

## Then by using the "extent" functions I can  group all these value

square<-extent(lon_min,lon_max,lat_min,lat_max)

## now I screen all the parts I do not need , obtaining just the images of the Amazon for each year

amazon14<-crop(lai14, Square)
amazon18<-crop(lai18, Square)
amazon23<-crop(lai23, Square)

## 
