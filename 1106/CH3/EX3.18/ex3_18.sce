// Example 3.18, page no-138
clear
clc

Rf=10*10^3
R1=100
Vni=1*10^-6
Kn=1+Rf/R1
Vno=Vni*(1+Rf/R1)
Vno=Vno*10^6
printf('Output noise voltage= %d uV (rms)', Vno)
