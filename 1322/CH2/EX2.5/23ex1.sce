
//84a^6/12a^2
clear;
clc;
close;
a=poly(0,'a');
p1=84*a^6;
p2=12*a^2;
p=p1/p2;
horner(p,a)


