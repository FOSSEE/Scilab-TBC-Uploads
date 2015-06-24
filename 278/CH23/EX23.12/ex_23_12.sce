//find
clc
//solution
//given
U=1000//N-m
D=0.100//m
d=0.02//m
n=30
G=85*10^9//N/m^2
C=D/d
K=(4*C-1)/(4*C-4)+(0.615/C)
V=(%pi*D*n)*[%pi/4*d^2]//volume//m^3
t=(U*4*K^2*G/V)^(0.5)//N/m^2
printf("max shear stress acting is,%f N/m^2\n",t)
dx=%pi*t*D^2*n/(K*d*G)
printf("deflection produced is,%f m",dx)
