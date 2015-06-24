//Chapter 11
//Example 11_7
//Page 278

clear;clc;

v=33;
d_in=1;
d_out=4;

g_max=2*v/d_in/log(d_out/d_in);
g_min=2*v/d_out/log(d_out/d_in);

printf("Maximum stress in the insulation = %.2f kV/cm \n\n", g_max);
printf("Minimum stress in the insulation = %.2f kV/cm \n\n", g_min);

