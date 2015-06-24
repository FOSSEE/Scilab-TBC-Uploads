clc
clear

//INPUT
l=536;//latent heat of vapourisation in cal/gm
v1=1;//volume of 1 gm of water in cc
v2=1600;//volume of steam in cc
t=373;//boiling point of water in K
p=1;//pressure in cm of hg
d=13.6;//specific gravity of mercury
g=981;//gravitational constant in cm/sec^2s/cal
j=4.2*10^7;//joules constant in erg/cal

//CALCULATIONS
dt=(t*(v2-v1)*d*g)/(l*j);//change in temperature in deg.C

//OUTPUT
mprintf('change in temperature is %3.2f deg.C',dt)
