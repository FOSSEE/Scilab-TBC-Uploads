clc
clear

//INPUT
vl=1;//volume of water in cc
vs=1.0908;//volume of ice in cc
t=273;//temperature in k
p=76*13.6*981;//pressure in dynes/sq.cm
l=80;//latent heat of fusion in cal
j=4.2*10^7;//joules constant in erg/cal

//CALCULATIONS
v=vl-vs;//change in volume
T=(v*t*p)/(j*l);//change in melting point of water

//OUTPUT
mprintf('the change in melting point of water is %3.11f',T)
