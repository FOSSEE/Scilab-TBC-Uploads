//Find the flux density

clc;
clear;

l=50*(10^-2); // Mean length
m0=4*%pi*(10^-7); // Constant (Permeablity of air)
ag=1*(10^-3); // Air Gap
mr=300; // Relative permeability
N=200; // No of turns
I=1; // Current
A=poly(0,'A');// Area

Rel=l/(m0*mr*A);//Reluctance of the substance

Relag=ag/(m0*A); // Air gap reluctance

MMF=N*I;

Relt=Rel+Relag; // Total reluctance

phi=MMF/Relt;//Flux

B=phi/A;

// To get the numerical value of the flux density as the polynomial denominator doesn't divide

x=B(2)-A;
x=roots(x);

y=B(3)-A;
y=roots(y);

B=x/y;

printf('The flux density = %g mWb/(m^2)\n',B*1000)
