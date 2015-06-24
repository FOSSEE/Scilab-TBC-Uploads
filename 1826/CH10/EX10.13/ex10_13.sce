// Example 10.13, page no-276
clear
clc

e=1.6*10^-19//C
ni=2.4*10^19 //m^-3
mue=0.39//m^2/V-s
muh=0.19//m^2/V-s
sig=ni*e*(mue+muh)
printf("The conductivity of Ge at 300 K is %.2f per Ohm-m",sig)
