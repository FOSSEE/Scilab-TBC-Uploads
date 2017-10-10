//chapter 4 Ex 10
clc;
clear;
close;
ratioXY=6/5; //the ratio of x/y
//dividing the equation (x^2+y^2)/(x^2-y^2) by y^2 we get (x/y)^2+1/(x/y)^2-1
value=(ratioXY^2+1)/(ratioXY^2-1);
mprintf("The value of expression is %.2f",value);
