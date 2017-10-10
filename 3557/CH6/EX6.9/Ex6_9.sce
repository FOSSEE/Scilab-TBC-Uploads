//Example6.9//
P=3000;//kg //load
D=10;//mm//diamter sphere of tungsten carbide
d=3.91;//mm //diameter impression in the iron surface
BHN=(2*P)/((%pi*D)*(D-sqrt(D^2-d^2)))
mprintf("BHN = %i",BHN)
//From the Figure 6.28b
printf("\n(TS)BHN=240 = 800 Mpa")
