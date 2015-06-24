clc
clear

//INPUT
l1=4;//length of the slab1 in cm
l2=2;//length of the slab2 in cm
k1=0.5;//thermal conductivity in cgs unit
k2=0.36;//thermal conductivity in cgs unit
t1=100;//temperature of the slab1 in deg.C
t2=0;//temperature of the slab2 in deg.C

//CALCULATIONS
t=k1*l2*t1/((k2*l1)+(k1*l2));//temperature of the commaon surface in deg.C

//OUTPUT
mprintf('the temperature of the common surface is %3.0f deg.C',t)
