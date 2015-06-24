//Example 8 // Frequencies
clc;
clear;
close;
//given data :
Y=7.1*10^10;// in N/m^2
p=2700;//in kg/m^3
l=1.5;// in m
r1=1;
r2=3;
r3=5;
n1=(r1/(4*l))*sqrt(Y/p);
n2=(r2/(4*l))*sqrt(Y/p);
n3=(r3/(4*l))*sqrt(Y/p);
disp(n1,"frequency of first harmonic,n1(Hz) = ")
disp(n2,"frequency of first harmonic,n1(Hz) = ")
disp(n3,"frequency of first harmonic,n1(Hz) = ")
