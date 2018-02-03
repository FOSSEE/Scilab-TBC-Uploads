//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 3.1

clc;
clear; 
s=%s
p=poly([4],'s','coeff')
q=poly([0 5 1],'s','coeff')
g=p./q
disp(g,'the given transfer function is')
c=g/(1+g)
disp(c,'the closed loop transfer function is')
u=c/s
disp(u,'the in put is unit step signal')
