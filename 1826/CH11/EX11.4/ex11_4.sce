// Example 11.4, page no-333
clear
clc
p=3000
D=10
d=2.2
Hb=2*p/(%pi*D*(D-sqrt(D^2-d^2)))
printf("\nBrinell Hardness Number of steel Plate, Hb=%.1f\n",Hb)
ts=3.45*Hb
fl=0.5*ts
printf("\nThe Tensile strength of steel plate is %.3f MPa\n",ts)
printf("\nThe Fatigue limit of steel plate is %.4f MPa",fl)
