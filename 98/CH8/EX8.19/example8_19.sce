//Chapter 8
//Example 8_19
//Page 191

clear;clc;

l=200;
w=1170/1000;
bs=4218;
area=1.29;
pr=122;
sf=5;

t=bs*area/sf;
d=sqrt(4*area/%pi);
ww=pr*d*1e-2;
wt=sqrt(w^2+ww^2);
sag=wt*l^2/8/t;
theta=atan(ww/w);
vsag=sag*cos(theta);

printf("Working tension = %.0f kg \n\n", t);
printf("Diameter of the conductor = %.2f \n\n", d);
printf("Total weight of the conductor per metre length = %.2f kg \n\n", wt);
printf("Slant sag = %.2f m \n\n", sag);
printf("theta = %.2f degrees \n\n", theta*180/%pi);
printf("Vertical sag = %.2f m \n\n", vsag);
