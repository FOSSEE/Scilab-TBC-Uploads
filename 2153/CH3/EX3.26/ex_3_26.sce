//Example 3.26 : density
clc;
clear;
close;
//given data :
format('v',5)
n=4;
N=6.023*10^23; // avogadro's number
r=1.278*10^-8;// in cm
A=63.5;
a=(r*4)/sqrt(2);// in cm
b=(A*n)/(a^3*N);
disp(b,"density of copper,b(g/cc) = ")
