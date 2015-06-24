//Chapter 11
//Example 11_24
//Page 297

clear;clc;

s=200;
r=20;
l=20;
//R+X is represented by the variable rx
rx=r*(l+l);
x=(rx-s)/2;
d=x/r;

printf("Resistance of cable from test end to fault point = %d ohm \n\n", x);
printf("Distance of fault from test end = %d km \n\n", d);
