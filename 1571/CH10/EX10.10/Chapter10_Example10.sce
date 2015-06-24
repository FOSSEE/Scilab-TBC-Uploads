clc
clear

//INPUT
t=353;//temperature in K
p=76*13.6*981;//pressure in dynes/sq.cm
v=0.146;//specific volume in cc/kg
l=35.6;//latent heat of fusion in cal/gm
j=4.18*10^7;//joules constant in ergs/cal

//CALCULATIONS
dt=t*p*v/(l*j);//change in melting point per atmosphere

//OUTPUT
mprintf('the rate of change in melting point is %3.3f per atmosphere',dt)
