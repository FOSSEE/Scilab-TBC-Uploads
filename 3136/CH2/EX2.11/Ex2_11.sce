clear all; clc;
//This numerical is Ex 2_4S,page 31.
disp("From phi equal to Qm/(Dm^3*Nm)=Qp/(Dp^3*Np) and psi=g*Hm/(Dm^2*Nm^2)=g*Hp/(Dp^2*Np^2), we have Qm=Qp*((Dm/Dp)^3)*(Nm/Np) and Hm=Hp*((Dm/Dp)^2)*(Nm/Np)^2)")

Q_p=42
//let x=Dm/Dp=1/5
x=1/5
N_m=3600
N_p=1800
H_p=50
E=0.92
rho=998
g=9.81
//let y=Q/60=0.011166
y=0.011166

Q_m=Q_p*((x)^3)*(N_m/N_p)
printf("\n The value of Q_m is equal to %g cmm",Q_m)

H_m=H_p*((x^2)*(N_m/N_p)^2)
printf("\n The value of H_m is equal to %g m",H_m)

Q_mr=0.67//rounded off
P_s=E*rho*g*(y)*H_m
printf("\n The value of P_s is equal to %0.1f W",P_s)
