// Example 2.23:Daimeter
clc;
clear;
close;
n1=1.5;//Core Refractive Index
d=0.01;//difference in the refrative index
h=1.3;// wavelenght in micro meter
m=1100;// numer of modes
v=round(sqrt(2*m));// Number of guided modes
a=(v*h)/(2*%pi*n1*sqrt(2*d));// Core radius 
d= 2*a;// Core Diameter
disp(d,"Core diameter in mircometers")
//answer is calculated wrong in the textbook
