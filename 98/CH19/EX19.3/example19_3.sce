//Chapter 19
//Example 19_3
//Page 484

clear;clc;

tp=50*1e-6;
rvp=100*1e3;

rrrv=rvp/tp;
fn=1/2/tp;

printf("Average RRRV = %.0f kV/sec \n\n", rrrv/1000);
printf("Natural frequency of oscillatins = %.0f Hz \n\n", fn);
