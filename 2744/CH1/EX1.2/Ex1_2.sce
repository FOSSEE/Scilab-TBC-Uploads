clear all;
clc;
s_p = 200;//steam pressure in lb/in^2
l = 4;//length in inches
b = 4;//breadth in inches
p = 14000;//permissible streaa in lb/in^2
P = s_p*l*b;//Pull on each bolt in lb-wt
A = P/p ;//necessary area of bolt-section
d = sqrt(4*A/%pi) ;//minimum diameter in inches
printf('The minimum diameter d of each stay bolt = %0.2f inch',d);
