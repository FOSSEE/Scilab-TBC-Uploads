// Example 10.5, page no-270
clear
clc
ni=2.15*10^13//cm^-3
mue=3900//cm^2/V-s
muh=1900
e=1.6*10^-19//C
sig=ni*e*(mue+muh)
r=1/sig

printf("The conductivity of intrinsic Ge is %.2f *10^-2 /ohm-cm\n The intrinsic resistivity is %.0f Ohm-cm",sig*10^2,r)//answers not matching with book's ans.
