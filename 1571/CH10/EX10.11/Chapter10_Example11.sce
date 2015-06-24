clc
clear

//INPUT
l=79.6*4.18*10^7;//latent heat of water in ergs/gm
t=273.16;//temperature of water in K
v1=1.0001;//specific volume of water at 0deg.C in cc
v2=1.0908;//specific volume of ice at 0deg.C in cc
p=1.013*10^6;//pressure of atmosphere in dyne/sq.cm

//CALCULATIONS
dt=t*(v1-v2)*p/l;//change in freezing point of water in deg.C

//OUTPUT
mprintf('change inn freezing point of water is %3.4f deg.C',dt)
