clear;
//clc();

d=6;
r=12.5;...//radius of each conductor
dm=(d*d*2*d)^(1/3);

dsl=0.7788*r/1000;

a=log([dm/dsl]);
l=2*a*10^(-7);

xl=2*(%pi)*l*50*1000;
printf("\n the inducatnce is:  %.2f Ohm/km\n",xl);
