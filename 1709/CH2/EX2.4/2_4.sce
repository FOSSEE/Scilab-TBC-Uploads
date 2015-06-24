clc
//Initialization of variables
P1=14.7  //psia
V1=1 //ft^3
P2=14.7 //psia
M=28.97
T1=70+460 //R
T2=500+460 //R
cp=0.24 //B/lbm F
//calculations
m=P1*144*V1*M/(1545*T1)
Qp=m*cp*(T2-T1)
V2=V1*P1*T2/(P2*T1)
W=P1*144*(V2-V1)
W=-W/778
dU=Qp+W
//results
printf("Work done = %.2f Btu",W)
printf("\n Heat added = %.2f Btu",Qp)
printf("\n Change in internal energy = %.2f Btu",dU)
