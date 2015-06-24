clc
//Initialization of variables
P1=20 //psia
P2=100 //psia
V=3 //ft^3
T=560 //R
ma=0.289
//calculations
ma=P1*V/(53.35*T)
Wa=-ma*53.35*T*log(P1/P2)
Qa=-Wa
Va2=3/5
V2s=V-Va2
hi=1279.1 //B/lbm
T2s=536 //F
//results
printf("Final temperature = %d F",T2s)
