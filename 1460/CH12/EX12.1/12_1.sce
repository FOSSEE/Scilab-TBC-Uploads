clc
//initialization of variables
w1=2 //lbm
w2=1 //lbm
P=30 //lbm/in^2
T=60+460 //R
//calculations
R1=35.1
R2=55.1
Rm=(w1*R1+w2*R2)/(w1+w2)
vm=(w1+w2)*Rm*T/(144*P)
p1=w1*R1*T/(144*vm)
p2=w2*R2*T/(144*vm)
//results
printf("Gas constant of the mixture = %.1f lb/in^2",Rm)
printf("\n Volume of the mixture = %.1f ft^3",vm)
printf("\n Partial pressure of CO2 = %.1f lb/in^2",p1)
printf("\n Partial pressure of N2 = %.1f lb/in^2",p2)
