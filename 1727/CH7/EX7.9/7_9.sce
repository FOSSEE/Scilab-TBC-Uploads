clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d=0.3 //m
per=25/100
Q=0.1 //m^3/s
k0=0.025*10^-2 //m
nu=0.000001
year=10
//calculations
V=Q/(%pi/4 *d^2)
RN=V*d/nu
e1=k0/d
f1=0.019 
f2=(1+per)*f1
e2=0.002
k2=e2*d
rate = (k2-k0)*100/year
//results
printf("Rate of increase =%.4f cm/year",rate)
