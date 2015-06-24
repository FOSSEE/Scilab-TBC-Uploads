clc
//initialization of variables
Pt1=100 //lb/in^2
Tt1=960 //RP2=15 //lb/in^2
wdot=1.13 //lbm/sec
gamma=1.4
//calculations
Pstar=Pt1*(2/(1+gamma))^(gamma/(gamma-1))
Tstar=Tt1*(2/(1+gamma))
Vstar=sqrt(gamma*32.2*53.3*Tstar)
vstar=53.3*Tstar/(144*Pstar)
Astar=wdot*vstar*144/Vstar
//results
printf("Ideal throat area = %.3f in^2",Astar)
printf("\n Ideal pressure = %.1f lb/in^2",Pstar)
printf("\n Ideal temperature = %d R",Tstar)
printf("\n Ideal throat specific volume = %.1f ft^3/lbm",vstar)
