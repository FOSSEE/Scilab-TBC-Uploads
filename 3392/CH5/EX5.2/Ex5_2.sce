clc
// initialization of variables
clear
// Loads and stresses and dimensions
P=10 //kN
Q=30 //kN
S0=70 //MPa
eps0=0.001
b1=400 //mm
h=400 //mm
b2=300 //mm
A1=300 //mm^2
A2=300 //mm^2
// calculations
// Units convertion
P=P*10^3
Q=Q*10^3
S0=S0*10^6
b1=b1*10^-3
b2=b2*10^-3
h=h*10^-3
A1=A1*10^-6
A2=A2*10^-6
L1=sqrt(b1^2+h^2)
L2=sqrt(b2^2+h^2)
a=L1*(Q*b2+P*h)/(A1*S0*h*(b1+b2))
b=L2*(Q*b1-P*h)/(A2*S0*h*(b1+b2))
c=L1^2*eps0/(b1+b2)
d=L2^2*eps0/(b1+b2)
u=c*sinh(a)-d*sinh(b)
v=b2/h*c*sinh(a)+b1/h*d*sinh(b)
// results
printf('u = %.4f mm',u*10^3)
printf('\n v = %.4f mm',v*10^3)
