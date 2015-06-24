//Chapter 8
//Example 8_4
//Page 173

clear;clc;

v2=11;
v3=13.1;

p1=poly([1 3 1], 'k', 'c');
p2=poly([1 1],'k', 'c');
p=v3*p2-v2*p1;
r=roots(p, 'e');
k=r(2);

v1=v2/(1+k);
printf("V1 = %.2f kV \n\n", v1);

v=v1+v2+v3;
printf("Voltage between line and earth = %.2f kV \n\n", v);
printf("Voltage between bus bars = %.2f kV \n\n", v*sqrt(3));
