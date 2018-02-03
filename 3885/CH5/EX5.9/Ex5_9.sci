//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.9

clc;
clear; 
s=poly(0,'s')
//the close loop tranfer function is K/s*(s+1)*(s+2)+K
a=(s^3)+(3*s^2)+(2*s)+1//the characterstic equation assuming K=1
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
disp('the valus of K lies between 0 to6 for the system to be stable')
