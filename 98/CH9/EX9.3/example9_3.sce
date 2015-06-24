//Chapter 9
//Example 9_3
//PAge 215

clear;clc;

d=200;
r=1.24/2;

loop_l=(1e-7)*(0.5+2*log(d/r));
loop_ls=loop_l*1000;


printf("Loop inductance/phase/m = %d*10^-7 H \n\n", loop_l*1e7 );

printf("Loop indictance per km = %.1f mH \n\n", loop_ls*1e3 );
