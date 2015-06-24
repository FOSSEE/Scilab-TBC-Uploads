clc
clear

//INPUT
l=539;//latent heat of water at 100deg.C in cal
j=4.2*10^7;//joules constant in ergs/cal
t=373;//temperature of water in K
v2=1670;//volume of steam formed in cc
v1=1;//intial volume in cc
g=981;//acceleration due to gravity in cm/sec^2
d=13.6;//specific gravity of hg

//CALCULATIONS
dp=l*j/(t*(v2-v1)*g*d);//rate of change of saturation pressure in cm of mercury

//OUTPUT
mprintf('the rate of change of saturation pressure is %3.2f cm of hg',dp)
