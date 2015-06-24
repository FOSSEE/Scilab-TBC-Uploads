//Example 4 // period
clc;
clear;
close;
//given data :
m=2;// in g
k=30;// in dynes/cm
b=5;// in dynes/cm-sec^-1
r=b/(2*m);
w0=sqrt(k/m);
T=2*%pi/sqrt(w0^2-r^2);
disp(T,"The time period,T(s) = ")
