//chapter 7 Ex14

clc;
close;

//Let one number be x, tbhus other is 50-x; according to given conditions forming the polynomial p=x^2-50*x+600; solving it we get
mycoeff=[600 -50 1];
p=poly(mycoeff,"x","coeff");
r=roots(p);
printf("The two parts are: %d and %d",r(1),r(2));
