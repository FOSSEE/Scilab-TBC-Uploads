//chapter 8 Ex 1

clc;
clear;
close;
//let age of younger person be x
//by the given condition:  equation is 3(x-6)=x+16-6;
mycoeff=[-28 2];
p=poly(mycoeff,"x","coeff");
x=roots(p);
mprintf("Their present ages are %d years and %d years",x,x+16);


