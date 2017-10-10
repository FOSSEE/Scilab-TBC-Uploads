clear
clc
//Example 13.4 MANOMETER DEFLECTION FOR AN ORIFICE METER
d=8/12; //[ft]
Ao=%pi*d^2/4 //area [ft^2]
v=1.22*10^-5; //[ft^2/s]
Q=2; //flow rate [ft^3/s]
g=32.2; //[ft/s^2]
Re=4*Q/(%pi*d*v) //Reynolds number
//interpolate for d/D=8/12 from fig. 13.14
K=0.68
del_h=Q^2/(2*g*K^2*Ao^2) //change in piezometric head [ft]
//del_h=del_l(g_w-g_air)/g_w
//g_w>>g_a
del_l=del_h //manometer deflection [ft]
printf("\nThe deflection on the manometer = %.1f ft.\n",del_l)