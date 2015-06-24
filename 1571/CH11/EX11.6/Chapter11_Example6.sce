clc
clear

//INPUT
k1=0.92;//thermal conductivity of copper in cgs unit
k2=0.5;//thermal conductivity of alluminium in cgs unit
t1=100;//temperature of copper in deg.C
t2=0;//temperature of alluminium in deg.C

//CALCULATIONS
t=k1*t1/(k1+k2);//welded teperature in deg.C

//OUTPUT
mprintf('welded temperature is %3.2f deg.C',t)
