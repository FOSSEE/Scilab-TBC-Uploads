clc
clear
//INPUT DATA
d=0.03205*10^-3//distance of movable mirror displaced in m
w=580.9*10^-9//wavelength of light in m

//CALCULATION
n=(2*d)/w//number of fringes shifted across the cross wire of eye piece of the telescope

//OUTPUT
printf('The number of fringes shifted across the cross wire of eye piece of the telescope is %i',n)
