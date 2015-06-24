//Chapter 11
//Example 11_11
//Page 280

clear;clc;

v=132;
g_max=60;

vp=v/sqrt(3);
pv_ph=vp*sqrt(2);

d=2*pv_ph/g_max;
d_out=2.718*d;

printf("Phase value of cable voltage = %.2f kV \n\n", vp);
printf("Peak value of phase voltage = %.2f kV \n\n", pv_ph);

printf("Most economical conductor diameter = %.2f cm \n\n", d);
printf("Internal diameter of sheath = %.2f cm \n\n", d_out);
