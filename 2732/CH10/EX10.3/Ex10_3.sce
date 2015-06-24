clc
//initialization of variables
clear
L=6000 //cm
L1=150 //cm
T=90 //W
Ip=%pi*10^4/32
E=2*10^6 //kg/cm^2
G=E/2.5
A=3 //cm^2
delta=0.5
//calculations
U=L/(2*E*A)+(T*T*L1/(2*G*Ip))
// U=0.5*W*delta
W=0.25/U
//results
printf('W = %.1f kg',W)
