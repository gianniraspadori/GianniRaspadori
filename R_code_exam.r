## R project for "Spatial ecology in R" exam.
## This spatial-ecological monitoring project wants to analyze the change during a decade of FCOVER (fraction of green vegetetion cover) in the world; From 2013 to 2023.
## First of all I want to recall the packages I will use. I have already used these packages so I do not need to install them.

library(terra)
library(ncdf4)

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
