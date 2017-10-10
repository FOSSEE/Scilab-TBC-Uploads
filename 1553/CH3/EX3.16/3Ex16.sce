//chapter 3 Ex 16
clc;
clear;
close;
//let value to be found is x
numerator=0.05^3+0.04^3;
denominator=0.05^2-.05*.04+.04^2;
x=(numerator/denominator);
mprintf("x=%.2f",x);
