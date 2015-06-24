// Example 2.2, page no-40
clear
clc

Vbe=0.7
Vcc=12
Rc1=1000
Rc2=330

Iref=(Vcc-Vbe)/Rc1 
I0=Iref
V0=Vcc-Rc2*I0

Iref=Iref/10^-3
printf("Iref= %.1f mA", Iref)
printf("\nV0= %.3f V", V0)
