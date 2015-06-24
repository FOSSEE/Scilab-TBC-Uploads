//Example 14.16
//Multiple Integration with Variable Limits
//Page no. 491
clc;close;clear;

deff('z=f(x)','z=x+1')
deff('z=f1(y)','z=(y+1)^3*(y+3)^2')
s=5/9*f(-sqrt(3/5))+8/9*f(0)+5/9*f(sqrt(3/5))
s=s*5/9*f1(-sqrt(3/5))+8/9*f1(0)+5/9*f1(sqrt(3/5))
s=s/256;
disp(s,'I = ')