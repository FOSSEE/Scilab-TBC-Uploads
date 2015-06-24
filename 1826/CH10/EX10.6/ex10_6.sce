// Example 10.6, page no-270
clear
clc
ni=2.1*10^19//m^-3
mue=0.4//m^2/V-s
muh=0.2
e=1.6*10^-19//C
p=4.5*10^23//m^-3
sig=ni*e*(mue+muh)
r=p*e*muh

printf("The conductivity of intrinsic Ge is %.3f *10^-2 /ohm-cm\nThe intrinsic resistivity is %.2f *10^4",sig,r*10^-4)
