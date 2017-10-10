//chapter 24 Ex 9

clc;
clear;
close;
l=5*100+55; //converting to centimeter
b=3*100+74;
area=l*b;
sideLargest=gcd(uint32([l b]));
areatile=sideLargest^2;
number=area/areatile;
mprintf("The number of tiles required are %d",number);
