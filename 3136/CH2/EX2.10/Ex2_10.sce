clear all; clc;
//This numerical is Ex 2_4E,page 31.

disp("From phi equal to Qm/(Dm^3*Nm)=Qp/(Dp^3*Np) and psi=g*Hm/(Dm^2*Nm^2)=g*Hp/(Dp^2*Np^2), we have Qm=Qp*((Dm/Dp)^3)*(Nm/Np) and Hm=Hp*((Dm/Dp)^2)*(Nm/Np)^2)")

Q_p=25
//let x=Dm/Dp=1/5
x=1/5
N_m=3600
N_p=1800
H_p=160
E=0.92
//let y=rho*g=62.4
y=62.4

Q_m=Q_p*((x)^3)*(N_m/N_p)
printf("\n The value of Q_m is equal to %g ft^3/s",Q_m)

H_m=H_p*((x^2)*(N_m/N_p)^2)
printf("\n The value of H_m is equal to %g ft",H_m)

P_s=E*y*Q_m*H_m/550//1/550 is conversion factor
printf("\n The value of P_s is equal to %0.02f hp",P_s)

