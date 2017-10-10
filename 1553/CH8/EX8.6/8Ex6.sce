//chapter 8 Ex 6

clc;
clear;
close;
//let sachin's age 1 years ago be 6x
//by the given condition:  equation is (6x+5)/(7x+5)=7/8;
mycoeff=[-5 1];
p=poly(mycoeff,"x","coeff");
x=roots(p);
mprintf("Present age of sachin is %d years",7*x+1);


