//Example 3.42:resistance
clc;
clear;
close;
dp=0.08;//±% error 
ds=0.05;//±% error
dq=dp;//
dx=dp+ds+dq;//±% percentage error
x=250;//ohms
dx1=dx*x;//
disp("Upper and lower limits of X are "+string(x+dx1)+" ohm and "+string(x-dx1)+" ohm")
