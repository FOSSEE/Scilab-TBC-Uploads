//Chapter 9
//Example 9_1
//Page 214

clear;clc;

d=200;
r=1.2/2;

loop_l=(1e-7)*(1+4*log(d/r));

printf("Loop indictance per length of the line = %.2f*10^-7 H \n\n", loop_l*1e7 );
printf("Loop indictance per km of the line = %.3f mH \n\n", loop_l*1e6 );
