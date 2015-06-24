//Example 9.3
//Recurrence formula
//Page no. 291
clc;clear;close;

x=poly(0,'x')
f=16*x^2-8*x+1;
z=roots(f)
disp(z,f)
printf('\t\tn\n(c1+n*c2) (%g)',z(1))