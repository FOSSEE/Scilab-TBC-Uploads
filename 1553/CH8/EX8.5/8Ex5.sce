//chapter 8 Ex 5

clc;
clear;
close;
//let son's age 8 years ago be x
//by the given condition:  equation is 2(x+16)=4x+16;
mycoeff=[-16 2];
p=poly(mycoeff,"x","coeff");
x=roots(p);
mprintf("Present age of rohit is %d years",4*x+8);


