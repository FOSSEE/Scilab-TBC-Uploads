// Example 10.3, page no-269
clear
clc
ni=2.5*10^19//m^-3
mue=0.39//m^2/V-s
muh=0.19
l=10^-2//m
e=1.6*10^-19//C
sig=ni*e*(mue+muh)
R=l/(sig*10^-6)
printf("The conductivity of intrinsic Ge is %.2f /ohm-m\nThe Resistance is %.0f",sig,R)
