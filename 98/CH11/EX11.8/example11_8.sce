//Chapter 11
//Example 11_8
//Page 278

clear;clc;

g_max=40;
g_min=10;
d_in=2;

d_out=d_in*g_max/g_min;
v=g_max*d_in*log(d_out/d_in)/2;

printf("(i) Insulation thickness = %.0f cm \n\n", (d_out-d_in)/2);
printf("(ii) Operating voltage = %.2f kV rms \n\n", v);

