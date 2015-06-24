
clear;
clc;

printf("\t Example 2.4\n");

k=18; // thermal conductivity of ressistor, W/(m*K)
A=1;     //area of slab surface, m^2
hc=3000;    //convective heat transfer coefficient,W/(m^2*K)
//Req=1/A*(2L/k+1/hc), for contact ressistances to be neglected 2L/18 must be very greater than the 1/3000
printf("thickness of slabs for contact ressistances to be nelected is very greater than 0.003 m. if length is 3 cm, the error is about 10 percent.");
//end