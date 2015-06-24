//Chapter-9,Example9_2,pg 9_15
P=4
phi=21*10^-3//flux(in Wb)
N=1120
C=42//coils
tpC=8//turns per coil
t=C*tpC//total turns
Z=2*t
//for lap wound
A=P
E=phi*P*N*Z/(60*A)
printf("e.m.f for lap wound\n")
printf("E=%.f V\n",E)
//for wave wound
A=2
E=263.424
N=E*60*A/(phi*P*Z)
printf("speed of generator for wave wound\n")
printf("N=%.f r.p.m\n",N)
