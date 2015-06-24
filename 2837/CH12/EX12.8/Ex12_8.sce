clc
clear
//Initialization of variables
tf=220 //F
ti=200 //F
d=2 //in
C=103.7
k=0.394
rho=59.37
hfg=965.2
mu=0.70
//calculations
h=C*(k^3 *rho^2 *hfg/((d/12) *mu*(tf-ti)))^(1/4)
//results
printf("Outer film coefficient = %d Btu/sq ft hr F",h)
