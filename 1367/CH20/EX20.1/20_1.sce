//Find fracture strength and ratio
//Ex:20.1
clc;
clear;
close;
l=1.5*10^-6;//crack length in m
e=70*10^9;//Young's modulous in N/m^2
y_e=1.05;//specific surface energy in j/m^2
a_f=sqrt((2*y_e*e)/(3.14*l));
a_f1=a_f*10^-6;//in MPa
disp(a_f1,"Fracture strength (in MPa) = ");
r=a_f/e;//ratio
disp(r,"Ratio of fracture strength to Youngs modulous = " );