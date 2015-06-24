clc
clear
//Input data
t1=30//Exposure time in s
d1=5.6//Lens aperture 
d2=8//Lens aperture

//Calculations
f=1/2//The squares of the f-number are in the ratio 1:2
t2=(1/f)*t1//Exposure time in s

//Output
printf('The time of exposure is %3.0f s when the print is made with a lens aperture of %i',t2,d2)
