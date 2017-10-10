//chapter 8 Ex 4

clc;
clear;
close;
//let son's age be x
//by the given condition:  equation is 3x+3+3=2(x+3)+10;
mycoeff=[-10 1];
p=poly(mycoeff,"x","coeff");
x=roots(p);
mprintf("Present age of father is %d years",3*x+3);


