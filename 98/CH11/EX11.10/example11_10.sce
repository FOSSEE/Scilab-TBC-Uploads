//Chapter 11
//Example 11_10
//Page 280

clear;clc;

v=50;
g_max=40;

v_rms=v*sqrt(2);
d=2*v_rms/g_max;

printf("Peak value of cable voltage = %.2f kV \n\n", v_rms);
printf("Most economical conductor diameter = %.2f cm \n\n", d);

