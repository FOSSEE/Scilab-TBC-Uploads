clc
//Initialization of variables
b=0.5 //m
y=0.35 //m
sf=0.001
nc=0.016
gam=9.81*1000
Q=0.15 //m^3/s
//calculations
A=b*y
P= b+ 2*y
R=A/P
ng=1/Q *A*R^(2/3) *sf^(1/2)
n= (b*nc^(3/2) + 2*y*ng^(3/2))^(2/3) /(P^(2/3))
Q2=1/n *A*R^(2/3) *sf^(1/2)
//results
printf("flow in case 2 = %.3f m^3/s",Q2)
