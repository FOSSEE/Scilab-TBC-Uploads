clc
//Initialization of variables
Kp=1.1*10^40 //atm^-0.5
dn=-0.5
R=0.08206 //lt atm/deg mol
T=298.15 //K
//calculations
Kc=Kp*(R*T)^(-dn)
//results
printf("Kc = %.1e (mol/lt)^-0.5",Kc)
