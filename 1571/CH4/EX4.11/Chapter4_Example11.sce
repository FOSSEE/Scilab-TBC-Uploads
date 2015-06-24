clc
clear

//INPUT
t1=273;//temperature of the hydrogen molecule in K
t2=373;//temperature of the hydrogen molecule in K
d=0.0000896;//density of the hydrogen molecule in gm/cc
p=76*13.6*981;//pressure of the hydrogen molecule in gm/cm/sec^2

//CALCULATIONS
v0=(3*p/d)^(0.5);//rms velocity at 0deg.C
v100=v0*(t2/t1)^(0.5);//rms velocity at 100deg.C

//OUTPUT
mprintf('the rms velocity at 0deg.C is %3f cm/sec \n the rms velocity at 100deg.C is %3f cm/sec',v0,v100)
