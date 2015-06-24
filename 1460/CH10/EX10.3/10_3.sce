clc
//Initialization of variables
P1=14 //lb/in^2
P2=60 //lb/in^2
Tt1=80+460 //R
Tt4=-20+460 //R
m=30 //lbm/sec
cp=0.24
//calculations
Tt2=Tt1*(P2/P1)^(0.286)
Tt3=Tt4*(P2/P1)^(0.286)
WbyJ1=cp*(Tt2-Tt1)
WbyJ2=cp*(Tt3-Tt4)
Q=cp*(Tt1-Tt4)
beta=Q/(WbyJ1-WbyJ2)
Power=m*778*(WbyJ1-WbyJ2)
Wdot=Power/550
//results
printf("Coefficient of performance = %.3f",beta)
printf("\n Net power = %d hp",Wdot)
//The answers given in textbook are a bit different due to rounding off error
