//Chapter 13
//Example 13_5
//Page 317

clear;clc;

l=200;
i=2;
r_km=0.3;
x=150;

r=2*r_km/1000;
vd=i*r*(l*x-x^2/2);
I=i*l;
R=r*l;
tvd=1/2*I*R;

printf("Resistance of distributor per metre run = %.4f ohm \n\n", r);
printf("(i) Voltage drop upto %d m from feeding point = %.1f V \n\n", x, vd);
printf("(ii) Total current entering distributor = %d A \n\n", I);
printf("     Total resistance of distributor = %.2f ohm \n\n", R);
printf("     Maximum voltage drop = %d V \n\n", tvd);

