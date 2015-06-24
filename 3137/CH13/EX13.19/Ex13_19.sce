//Initilization of variables
W=12 //oz
k=2 //oz/in
M=0.34 //kg
K=22 //N/m
g=32.2 //ft/s^2
//Calculations
//Part(a)
a=(k*W*g)/16
b=W/16
f=(1/(2*%pi))*(sqrt(a/b)) //Hz for simplicity the numerator and denominator have been computed seperately as a and b
//Part(b)
F=(1/(2*%pi))*(sqrt(K/M)) //Hz
//Result
clc
printf('The frequency in part (a) is %f Hz and in part(b) is %f Hz',f,F)
