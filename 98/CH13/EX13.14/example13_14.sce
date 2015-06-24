//Chapter 13
//Example 13_14
//Page 327

clear;clc;

l=1000;
i=0.5;
r_km=0.05;
v=220;

r=2*r_km/1000;
I=i*l;
R=r*l;
vd=I*R/8;
maxv=v-vd;

printf("Resistance of distributor per metre = %.1f*10^-3 ohm \n\n", r*1e3);
printf("Total current supplied by distributor = %d A \n\n", I);
printf("Total resistance of the distributor = %.1f ohm \n\n", R);
printf("Maximum voltage drop = %.2f V \n\n", vd);
printf("Maximm voltage drop will occur at the midpoint of the distributor = %.2f V \n\n", maxv);
