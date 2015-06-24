
//Exa:3.6
clc;
clear;
close;
//Given:
dev=100;//in KHz
mod_f=15;//in KHz
m1=dev/mod_f;
m2=3*dev/mod_f;
t=m1/m2;
printf("\n modulation index = %f ",m1);
printf("\n modulation index = %f ",m2);
printf("\n when deviation is tripled m becomes = %ftimes ",t);