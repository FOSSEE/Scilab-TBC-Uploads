clc;
r=0.05;  // in m
eo=8.85*10^-12;  //constant
q=10^-9;  //charge at point P in Coulomb
E=q/(4*(%pi)*eo*(r^2));  //calculating electric field
disp(E,"Electric field in v/m = ");  //displaying result
r1=0.2;  //in m
V1=q/(4*(%pi)*eo*r1);  //calculating potential difference
disp(V1," Potential difference between two points in Volt = ");  //displaying result