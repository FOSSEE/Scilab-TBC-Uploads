// Example 2.21.b:Multipath dispersion per unit length
clc;
clear;
close;
c=3*10^8 ;// Speed of lignt in m/s
v=2*10^8;//speed of ligh in fiber in m/s
Oc=75;// Critical angle in degree
n1=c/v;//cORE Refractive Index
n2=n1*(sind(Oc));// Cladding Refrative index
d= n1-n2;// differnce in refractive index
Md1=(n1/n2)*(d/c);//
Md= Md1*10^9;
disp(Md,"Multipath dispersion in microsecond per kilometer ")
