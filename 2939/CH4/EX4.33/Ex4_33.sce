
//Ex4_33
clc;

// Given:
ax0 =1; //assume
tx = 2; //hrs
ty = 1; //hrs
// Solution:
// general equation connecting Ax and Ay is
// Ax(n) = (ky * Ax(0) * (exp(-kx * t) - exp(-ky * t))/ (ky - kx)) + Ay(0) * exp(-ky * t)
ax0 = 1;
ay4 = (ax0 * (0.693/1) * ((1/4)-(1/16)))/((0.693/1)-(0.693/2)) + ax0 * (1/16);

ax4 = (1* ax0)/4;

proportion = (ay4 * 100)/(ay4 + ax4);

printf("The proportion of ay4 at the end of 4 hrs is %f",proportion)
