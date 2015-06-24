// Example 2.32 page no-116
clear
clc

Vt=301.6/11600
i0=20*10^-6
v=0.1
I=i0*(%e^(v/Vt)-1)
printf("\nI=%.3f mA",I*1000)
r_DC=v/I
printf("\nr_DC=%.1f Ohm",r_DC)
r_AC=i0*(%e^(v/Vt))/Vt
printf("\nr_AC = %.1f Ohm",1/r_AC)
