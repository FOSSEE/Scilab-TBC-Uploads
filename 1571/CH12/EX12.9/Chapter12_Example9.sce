clc
clear

//INPUT
n=17000;//luminosity of star compared to sun
t=6000;//temperature of the sun in K

//CALCULATIONS
t1=(n*t^4)^(1/4);//temperature of the star in K

//OUTPUT
mprintf('the temperature of the star is %3.2f K',t1)
