clc
clear

//INPUT
vv=1674;//volume of vapour in cc
vl=1;//volume of liquid in cc
p=760;//pressure of steam and water in mm
t=373;//temperature in K
p1=27.12;//superincumbent pressure in mm

//CALCULATIONS
v=vv-vl;//change in volume
l=(v*p1*t*0.024203/(p));//latent heat of vapourisation in cal

//OUTPUT
mprintf('the latent heat of vapourisation is %3.1f cal',l)
