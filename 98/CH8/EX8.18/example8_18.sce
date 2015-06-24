//Chapter 8
//Example 8_18
//Page 190

clear;clc;

l=150;
t=2000;
ww=1.5;
sg=9.9;
area=2;

w=sg*area*100/1000;
wt=sqrt(w^2+ww^2);
sag=wt*l^2/8/t;
theta=atan(ww/w);
vsag=sag*cos(theta);

printf("Weight of conductor per length = %.2f kg \n\n", w);
printf("Total weight of 1m conductor = %.2f kg \n\n", wt);
printf("Sag = %.2f m \n\n", sag);
printf("theta = %.2f degrees \n\n", theta/%pi*180);
printf("Vertical sag = %.2f m \n\n", vsag);