clc
//Initialization of variables
b=4 //m
y=1.2 //m
sf=0.001
n=0.012
gam=9.81*1000
//calculations
A=b*y
R=A/(b+ 2*y)
Q=1/n *A*R^(2/3) *sf^(1/2)
T=gam*R*sf
//results
printf("Discharge = %.3f m^3/s",Q)
printf("\n bed shear = %.2f N/m^2",T)
//The answer in textbook is wrong for discharge. Please use a calculator.
