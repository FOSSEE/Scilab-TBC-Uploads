// Example 1_9
clc;funcprot(0);
// Given data
m=10.0;// lbm
omega=1800;// rpm
d=4.00;// inches
R=d/2;// inches
g_c=32.174;// lbm.ft/lbf.s^2

// Calculation
I=(m*(R/12)^2)/2;// lbm.ft^2
KE_rot=(I*((2*%pi*omega)/60)^2)/(2*g_c);// lbf
printf("\nThe rotational kinetic energy in the armature of an electric motor,KE_rot=%2.1f ft.lbf",KE_rot);
