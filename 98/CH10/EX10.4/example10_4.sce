//Chapter 10
//Example 10_4
//Page 236

clear;clc;

load_kw=15000;
pf=0.8;
r=1;
vr=132;
loss=0.05;

i=load_kw*1000/sqrt(3)/vr/1000/pf;
l_loss=loss*load_kw;
r=l_loss*1000/3/i^2;
l=r;

printf("Line current = %.0f A \n\n", i);
printf("Line losses = %.0f kW \n\n", l_loss);
printf("R = %.2f ohm \n\n", r);
printf("Length of the line = %.2f km \n\n", l);
