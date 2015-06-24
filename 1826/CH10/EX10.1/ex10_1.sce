// Example 10.1, page no-267
clear
clc
T=300//K
mue=0.4//m^2/V-s
muh=0.2
e=1.6*10^-19//C
eg=0.7*e//J
m=9.1*10^-31//kg
me=0.55
mh=0.37
h=6.626*10^-34
k=1.38*10^-23
ni=2*(2*%pi*k*T/(h^2))^(1.5)
ni=ni*(m^1.5)*(mh*me)^(3/4)
ni=ni*%e^(-eg/(k*T))
printf("\nThe intrinsic concentration ni=%.3f *10^13 /m^3",ni*10^-13)

sig=ni*e*(mue+muh)
rho=1/sig
printf("\nIntrinsic Conductivity,Sigma =%.3f *10^-6 per m^3\nIntrinsic Resistivity, rho = %.2f*10^6 Ohm-m",sig*10^6,rho*10^-6)
