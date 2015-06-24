clc
clear

//INPUT
l1=1.9;//length of the first bar in cm
l2=5;//length of the second bar in cm
k2=0.92;//thermal conductivity in cgs unit

//CALCULATIONS
k1=k2*(l1/l2)^2;//thermal conductivity if first bar in cgs unit

//OUTPUT
mprintf('thermal conductivity of first bar is %3.3f cgs unit',k1)
