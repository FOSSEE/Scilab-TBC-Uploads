// Example 5.4:diameter of the core
clc;
clear;
close;
format('v',4)
c=3*10^8;//in m/s
dm=6;//material dispersion in ps nm^-1 km^-1
h=1.55;//in micro meter
n1=1.45;//core refrative index
d=0.005;//differnce
n2=n1*(1-d);//cladding refrative index
x=((-dm/(((-n2*d)/(c*h))*10^12))-0.080)/0.549;//
v=-(sqrt(x)-2.834);//
d=((v*h)/(%pi*n1*sqrt(2*d)));//diameter in micro meter
disp(d,"diameter of the core in micro meter")
