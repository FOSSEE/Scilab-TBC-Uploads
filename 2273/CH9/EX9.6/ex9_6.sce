//Determine most economical value of diameter and overall diameter of insulation
clear;
clc;
//soltion
//given
gmax=60;//kV/cm
V=132*sqrt(2)/sqrt(3);//kV
d=2*V/gmax;
D=exp(1)*d;
printf("Diameter of conductor(d)= %.1f cm \nInternal diameter of shelath= %.2f cm",d,D);
