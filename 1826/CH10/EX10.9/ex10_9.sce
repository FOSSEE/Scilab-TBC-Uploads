// Example 10.9, page no-273
clear
clc
e=1.6*10^-19//C
m=9.1*10^-31//kg
h=6.626*10^-34
k=1.38*10^-23
eg=0.7*e
T=300//K
ni=2*(2*%pi*m*k*T/(h^(2)))^(1.5)
ni=ni*%e^(-eg/(2*k*T))
printf("The carrier concentration of an intrinsic semiconductor is = %.2f*10^18 per m^3",ni*10^-18)
