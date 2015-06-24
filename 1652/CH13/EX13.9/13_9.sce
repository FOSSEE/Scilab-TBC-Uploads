clc
//Initialization of variables
Kp=0.141 //atm
P=1 //atm
nu=2
R=0.08206 //lt atm/deg mol
T=298.15 //K
M=92.02 //g/mol
//calculations
a=poly(0,"a");
p=Kp*a^2 +4*a^2*P -Kp
z=roots(p)
alpha=z(1)
wbyV=P*M/(R*T*(1+(nu-1)*alpha))
//results
printf("Density of the equilibrium mixture = %.2f g/lt",wbyV)
