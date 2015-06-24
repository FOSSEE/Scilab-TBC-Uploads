//Example 11.17 Fenske's Equation

clear;
clc;

printf("\tExample 11.17\n");

//From previous question data
xA_d=0.453;
xB_d=0.013;

xA_s=0.04;
xB_s=0.96;

alpha_av=2.22;

//By Fenske Equation for no. of plates

n=((log(xA_d*xB_s/(xA_s*xB_d)))/log(alpha_av))-1;

printf("\nMinimum no. of plates are %f or %d\n",n,n);

//End