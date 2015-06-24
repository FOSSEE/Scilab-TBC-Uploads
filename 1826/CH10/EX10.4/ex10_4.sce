// Example 10.4, page no-269
clear
clc
ni=1.5*10^16//m^-3
mue=0.13//m^2/V-s
muh=0.05
e=1.6*10^-19//C
sig=ni*e*(mue+muh)
printf("The conductivity of intrinsic Ge is %.2f *10^-4 /ohm-m",sig*10^4)
