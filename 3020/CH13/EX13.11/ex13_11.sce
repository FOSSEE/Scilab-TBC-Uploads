clc;
clear all;
p1 = 1.2; // Primitives in Angstom
p2 = 1.8; // Primitives in Angstom
p3 = 2; // Primitives in Angstom
h = 2;// Miller Indices
k = 3;// Miller Indices
l = 1;// Miller Indices
a = 1/h;
b = 1/k;
c = 1/l;
p = [a,b,c];
[pp fact] = lcm(p);
i1 = a*(1/fact(3));
i2 = b*(1/fact(3));
i3 = c*(1/fact(3));
l1 = p1*i1;
l2 = p2*i2;
l3 = p3*i3;
l21 = (p1/l1)*l2;
l31 = (p1/l1)*l3;
disp('Angstom',l31,l21,'The length of intercept made by Y and Z axes is')
