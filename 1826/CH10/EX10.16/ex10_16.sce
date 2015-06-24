// Example 10.16, page no-278
clear
clc
e=1.6*10^-19//C
m=9.1*10^-31//kg
mm=0.31*m//kg
h=6.626*10^-34
k=1.38*10^-23
eg=1.1*e
T=300//K
ni=2*(2*%pi*mm*k*T/(h^(2)))^(1.5)
ni=ni*%e^(-eg/(2*k*T))
printf("The intrinsic concentration of Si at %d K is %.4f * 10^15 electrons per m^3",T,ni*10^-15)
