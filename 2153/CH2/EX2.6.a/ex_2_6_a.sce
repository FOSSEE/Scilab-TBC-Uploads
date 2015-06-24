//Example 2.6.a : the energy of the photon emitted
clc;
clear;
close;
format('v',5);
//given data :
Z=1;//for hydrozen
n1=3;
n2=2;
E3=-(13.6*Z^2)/n1^2;
E2=-(13.6*Z^2)/n2^2;
del_E=E3-E2;
disp(del_E,"the energy of photon emitted,del_E(eV) = ")
