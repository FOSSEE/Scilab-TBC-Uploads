//Chapter 8
//Example 8_8
//Page 176

clear;clc;

v2=13.2;
v3=18;

p1=poly([1 3 1], 'k', 'c');
p2=poly([1 1],'k', 'c');
p=v3*p2-v2*p1;
r=roots(p, 'e');
k=r(2);

v1=v2/(1+k);
printf("Voltage across first unit = V1 = %.2f kV \n\n", v1);
v4=v1*(1+k^3+5*k^2+6*k);
printf("Voltage across fourth unit = V4 = %.2f kV \n\n", v4);

v=v1+v2+v3+v4;
printf("Voltage between line and earth = %.2f kV \n\n", v);
printf("Voltage between bus bars = %.2f kV \n\n", v*sqrt(3));
