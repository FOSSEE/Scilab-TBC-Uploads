clc
clear

//INPUT
m=1;//mass in gm
l=536;//latent heat in cal/gm
j=4.2*10^7;//joules constant in ergs/cal
v=1649;//volume of water in cc
p=76*13.6*981;//pressure of water in dynes/sq.cm

//CALCULATIONS
dq=m*l*j;//heat supplied in ergs
dw=p*v;//work done in ergs
du=dq-dw;//internal energy developed in ergs

//OUTPUT
mprintf('internal energy of water is %3.2f ergs',du)
