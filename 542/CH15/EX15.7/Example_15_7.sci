clear;
clc;
printf("\n Example 15.7");
l = poly([0],'l');
l1 = roots(log(780/220)-[l*(463-433)]/[8314*463*433]);
printf("\n λv = %d kj/kmol",l1);
P = poly([0],'P');
P1 = roots(P-220/exp(70340*(433-393)/(8.314*433*393)));
printf("\n   P = %d kN/m^2",P1);