//Example 13-5,Page No - 501

clear
clc

vmax= 52
vmin= 17
Z0 = 75

SWR = vmax/vmin
ref_coeff = (vmax-vmin)/(vmax+vmin)
Zl1 = Z0*SWR
Zl2 = Z0/SWR

printf('The standing wave ratio is %.2f',SWR)
printf('\n Reflection coefficient is %.2f',ref_coeff)
printf('\n The value of resistive load is %.2f or %.2f ohm',Zl1,Zl2)
