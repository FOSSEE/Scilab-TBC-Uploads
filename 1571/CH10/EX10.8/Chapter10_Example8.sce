clc
clear

//INPUT
t=350;//boiling point temperature in K
l=46;//latent heat of vapourisation in cal/gm
v1=1/1.6;//intial volume in cc
dp=2.3;//change in pressure with temperature in cm of hg/deg.C
d=13.6;//specific gravity of mercury
g=981;//acceleration due to gravity in cm/sec^2
j=4.2*10^7;//joukes constant in ergs/cal

//CALCULTIONS
v2=v1+(l*j)/(t*dp*d*g);//specific volume in cc

//OUTPUT
mprintf('specific volume of vapour of carbon is %3.3f cc',v2)
