// Example 10.9, page no-273
clear
clc
e=1.6*10^-19//C
m=9.1*10^-31//kg
h=6.626*10^-34
k=1.38*10^-23
eg=1.1*e
mue=0.48//m^2/V.s
muh=0.013//m^2/V.s
T=300//K
ni=2*(2*%pi*m*k*T/(h^(2)))^(1.5)
ni=ni*%e^(-eg/(2*k*T))

sig=ni*e*(mue+muh)
printf("\nThe carrier concentration of an intrinsic semiconductor is = %.2f*10^16 per m^3\n the electrical conductiivity od Si is %.3f*10^-3 per Ohm-m",ni*10^-16,sig*10^3)
