//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.12

clc;
clear; 
s=poly(0,'s')
//the close loop tranfer function is K(1-s)/s*(s^2+5s+9)+K(1-s)
a=(s^3)+(5*s^2)+(8*s)+1//the charater stic equation is assuming K=1
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
disp('the valus of K lies between 0 to7.5 for the system to be stable')
