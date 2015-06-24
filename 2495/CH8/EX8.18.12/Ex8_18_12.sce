clear
clc
E1=0.222;//in V
E2=0.095;//in v
E=(E1-E2);//in V
n=1;//
F=96500;//in C/mol
R=8.314;//in J/Kmol
T=298;//in K
Keq=10^((n*F*E)/(2.303*R*T));//equilibrium constant
printf('Keq=%.1f',Keq)
X=(Keq*0.1)/(1+Keq);//in moldm^3
printf('\nX=%.6f moldm^3',X)
Y=0.1-X;//in moldm^3
printf('\nY=%.6f moldm^3',Y)

//error in the solution
//There are some errors in the solution given in textbook
//page 487

