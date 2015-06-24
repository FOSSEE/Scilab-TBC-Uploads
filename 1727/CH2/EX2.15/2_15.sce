clc
//Initialization of variables
d=3 //m
rh1=1.19 //kg/m^3
rh2=0.17 //kg/m^3 
g=9.81 //m/s^2
//calculations
pay=(rh1-rh2)*g*%pi/6 *d^3
//results
printf(" Pay load = %.2f N",pay)
