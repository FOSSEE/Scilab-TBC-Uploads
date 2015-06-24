//chapter 31
//example4
clc
//given
m=9.1*10^-31 //in kg
n=8.4*10^28 //in m-1
e=1.6*10^-19 //in coul
p=1.7*10^-8 //in ohm-m
v=1.6*10^8 //in cm/sec
T=2*m/(n*p*e^2)
disp(T,"(a) Mean time b/w collisions in sec is")
Lambda=T*v
disp(Lambda,"(b) Mean free path in cm is")
