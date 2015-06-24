clc
//Initialization of variables
P=14.7 //psi
t=60+460 //R
R0=10.73 //psia ft^3/mol R
//calculations
v=R0*t/P
m=28.96
//results
printf("volume = %d ft^3/mol",v)
printf("\n Mass = %.2f lbm",m)
