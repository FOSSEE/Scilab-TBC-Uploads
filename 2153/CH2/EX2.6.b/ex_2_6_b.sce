//Example 2.6.b : frequency
clc;
clear;
close;
//given data :
format('v',9)
Z=1;//for hydrozen
n1=3;
n2=2;
m=6.626*10^-34;// mass of electron in kg
E3=-(13.6*Z^2)/n1^2;
E2=-(13.6*Z^2)/n2^2;
del_E=E3-E2;
E=del_E*1.6*10^-19;// in joules
v=(E/m);
disp(v,"frequency of the photon emitted,v(Hz) = ")
