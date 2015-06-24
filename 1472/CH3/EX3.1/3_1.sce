clc
//Initialization of variables
T1=500 //F
T2=100 //F
Tf=75 //F
cpi=0.120 //B/lb F
cpw=1.0 //B/lb F
//calculations
Qw=1*cpw*(T2-Tf)
Qi=-1*cpi*(T2-T1)
mw=Qi/Qw
//results
printf("Mass of water = %.2f lb water/lb iron",mw)
