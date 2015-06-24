clc
clear

//INPUT DATA 
//callender and barnes continous flow method
V1=3;//potential difference in v
V2=3.75;//potential differnce in v
i1=2;//current in amp
i2=2.5;//current in amp
T=2.7;//the rise in temperature of the water in deg.C
m1=30;//water flow rate at 3 volts in gm/min
m2=48;//water flow rate at 3.75volts in gm/min
s=1;//specific heat of the water kj/kg-K

//CALCULATIONS
J=(V1*i1-V2*i2)/(s*T*(m1-m2)/60);//the mechanical equivalent in j/cal

//OUTPUT
mprintf('the mechanical equivalent is %3.3f j/cal',J)
