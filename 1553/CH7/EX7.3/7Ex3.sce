//Chapter 7 Ex 3
clc;
close;

//let the number be x; thus the reciprocal is 1/x and equation (e1)can be formed as:
//x+(1/x)=13/6; converting it into a polynomial

mycoeff=[6 -13 6];
p=poly(mycoeff,"x","coeff");
ans=roots(p);
printf("The number is: x=%1.1f or x=%1.1f",ans(1),ans(2));
