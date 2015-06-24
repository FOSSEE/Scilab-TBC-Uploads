//Chapter-9,Example9_1,pg 9_14
P=4
Z=440
phi=0.07//flux(in Wb)
N=900
//for lap-wound
A=P
E=phi*P*N*Z/(60*A)
printf("e.m.f for lap wound\n")
printf("E=%.f V\n",E)
//for wave wound
A=2
E=phi*P*N*Z/(60*A)
printf("e.m.f for wave wound\n")
printf("E=%.f V\n",E)
