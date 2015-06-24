clc
//Initialization of variables
P=14.7 //psia
T=70+460 //R
M=32
//calculations
Ro=1545/M
V2=3*Ro*T
V2=V2*32.174
vrms=sqrt(V2)
//results
printf("rms velocity = %d ft/sec",vrms)
