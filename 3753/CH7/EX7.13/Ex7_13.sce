//Example number 7.13, Page number 7.18

clc;clear;close

// Variable declaration
n=4// unitless
A=107.87 // in m
rho=10500 // kg/m^3
N=6.02*10^26// unitless
h=1;// in m
k=1;// in m
l=1;// in m
H=6.625*10^-34 // planks constant
e=1.6*10^-19 // Charge
theta=(19+(12/60))*%pi/180 // radian
C=3*10^8 // in m/s
// Calculations
a=((n*A)/(rho*N))^(1/3)*10^10 // in m
d=a/sqrt(h^2+k^2+l^2) // in m
lamda=2*d*sin(theta)// in m
E=(H*C)/(lamda*10^-10*e) // eV

// Result
printf("a = %.2f Angstroms",a)
printf("\nd = %.2f Angstroms",d) 
printf("\nlamda = %.3f Angstroms",lamda)
printf("\nE = %.e eV",E)
