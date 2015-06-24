clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
P1=150*10^3 //Pa
d0=3 //cm
d1=6 //cm
Cv=0.98
Cc=0.62
//calculations
P1g=P1/(g*rho)
Ar= (d0/d1)^4
A0=%pi/4 *(d0/100)^2
Q= Cv*Cc*A0 *sqrt(2*g) /sqrt(1- Cc^2 *Ar) *sqrt(P1g)
//results
printf("Discharge = %.2f lps",Q*10^3)
