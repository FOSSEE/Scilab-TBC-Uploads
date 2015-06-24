// Example 3.4, page no-115
clear
clc

Ib1=400*10^-9
Ib2=300*10^-9
Ib=(Ib1+Ib2)/2
Ios=Ib1-Ib2
Ib=Ib*10^9
Ios=Ios*10^9
printf('Ib= %.1f nA', Ib)
printf('\nIos= %.1f nA', Ios)

