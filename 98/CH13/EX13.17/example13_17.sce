//Chapter 13
//Example 13_17
//Page 329

clear;clc;

l=1000;
i=1.25;
r_km=0.05;

r=2*r_km/1000;
I=i*l;
R=r*l;
vd=I*R/8;

//Part 1 is derivation of maximum voltage drop and is not included in the code. Only Part 2 is solved.
 
printf("(i) Total current supplied by distributor = %d A \n\n", I);
printf("Total resistance of the distributor = %.1f ohm \n\n", R);
printf("Maximum voltage drop = %.2f V \n\n", vd);
