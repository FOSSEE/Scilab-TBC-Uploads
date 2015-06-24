// Example 2.5, page no-44
clear
clc

Beta=100
R=20000 
Vcc=5
Vbe=0.6
Iref=(Vcc-Vbe)/R
N=3

Ic=Iref*(1+ 4/Beta)
Ic1=Iref*(Beta)/(Beta+N+1)
Ic2=Iref*(Beta)/(Beta+N+1)
Ic3=Iref*(Beta)/(Beta+N+1)

Iref=Iref/10^-3
printf("Iref= %.2f mA",Iref)
Ic1=Ic1/10^-3
printf("\nIc1=Ic2=Ic3= %.3f mA",Ic1)
