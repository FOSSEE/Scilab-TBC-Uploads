//chapter 7 Ex7

clc;
close;

//Let one number be x, tbhus other is 15-x; according to given conditions forming the polynomial p=x^2+(15-x)^2; solving it we get
mycoeff=[56 -15 1];
p=poly(mycoeff,"x","coeff");
r=roots(p);
printf("The two numbers are: %d and %d",r(1),r(2));
