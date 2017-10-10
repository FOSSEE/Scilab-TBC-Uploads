//chapter 8 Ex 7

clc;
clear;
close;
//let abhay's age 10 years ago be x
//by the given condition:  equation is x+16=3/7*(5x+16);
mycoeff=[-64 8];
p=poly(mycoeff,"x","coeff");
x=roots(p);
mprintf("Present age of abhay father is %d years",5*x+10);


