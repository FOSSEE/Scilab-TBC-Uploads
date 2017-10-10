//chapter13
//example13.17
//page291

Ao=1000
Es=10d-3 // V
Rs=3d3 // ohm
Rin=7d3 // ohm
Rout=15 // ohm
Rl=35 // ohm

I1=Es/(Rs+Rin)
V1=I1*Rin
Av=Ao*Rl/(Rout+Rl) 
// since V2/V1=Av, we get
V2=V1*Av

P2=V2^2/Rl
P1=V1^2/Rin
Ap=P2/P1

printf("magnitude of output voltage = %.2f V \n",V2)
printf("power gain = %.2f \n",Ap)