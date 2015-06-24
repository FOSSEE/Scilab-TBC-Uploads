// Example 3.2, page no-107
clear
clc

Iref= 0.715*10^-3
Ic13b= 0.75*Iref
Ic17=Ic13b
Ie17=Ic13b
Beta=150
Vbe17=0.7
R9=50*10^3
R8=100
Ic16= (Ic17/Beta) + (Ie17*R8 + Vbe17)/R9
Ic16=Ic16*1000000/1.232
printf("\nIc16= %.1f uA", Ic16)
