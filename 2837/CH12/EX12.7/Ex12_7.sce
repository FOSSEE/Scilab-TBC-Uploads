clc
clear
//Initialization of variablesdo=2 //in
tf=120 //F
ti=80 //F
rho=0.0709
g=32.17
bet=1/560
cp=0.24
mu=0.0461
k=0.0157
d=2 //in
Cd=0.45
//calculations
GrPr=(d/12)^3 *rho^2 *g*3600^2 *bet*(tf-ti)*cp/(mu*k)
hc=Cd*k/(d/12)^(1/4) *GrPr^(1/4)
//results
printf("Convective film coefficient = %.3f Btu/sq ft hr F",hc)
