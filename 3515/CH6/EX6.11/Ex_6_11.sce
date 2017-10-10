// Exa 6.11
format('v',7);
clc;
clear;
close;
// Given data
R= 10;// in kohm
R=R*10^3;// in ohm
f=1000;
fie= 60;// in °
// The impedence of given circuit , Z= R+j*1/(omega*C)
// the phase shift, tan(fie)= imaginary part/ Real part
// tand(fie) = 1/(omega*R*C)
C= 1/(2*%pi*R*tand(fie));
disp(C*10^12,"The value of C in pF is : ")

// Note : There is an calculation error to evaluate the value of C, So the answer in the book is wrong
