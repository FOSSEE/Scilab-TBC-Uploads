// Example 2.1, page no-40
clear
clc

Vcc=5
Vbeon=0.6
Beta=150
Io=100*10^-6
Iref=Io*(1+ 2/Beta) 
Iref=Iref*10^6
printf("Iref= %.2f uA", Iref)

R=(Vcc-Vbeon)/Iref
R=R*1000
printf("\nResistance= %.2f kohm", R)
