//Example 1.5: 
clc;
clear;
close;
//given data :
format('v',5)
e=1.6*10^-19;// in V
n=2.5*10^19;//m^3
p=n;//
ni=n;//
mu_p=0.17;// holes mobilities in m^2/V-s
mu_n=0.36;// electrons mobilities in m^2/V-s
sgint=e*(ni*(mu_p+mu_n));//electrical conductivity in mho/metre
pint=1/sgint;//resistivity in ohm-meter
disp(sgint,"electrical conductivity is ,(mho/metre)=")
disp(pint,"resistivity is ,(ohm-metre)=")
