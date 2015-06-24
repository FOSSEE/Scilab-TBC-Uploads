//Chapter 13
//Example 13_21
//Page 332

clear;clc;

l=500;
v=240;
r=0.001;

x=50;
printf("(i) Point of minimum potential = %d A \n\n", x);
tc=160+200;
Ia=100+x;
Ib=360-150;
vd=v-150*(100*r)-x*(150*r);
printf("(ii)Total current = %d A \n", tc);
printf("Current supplied by A = %d A \n", Ia);
printf("Current supplied by B = %d A \n", Ib);
printf("Minimum potential = %.2f V \n", vd);


