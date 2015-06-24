clc;
G=3.44*10^-8;  //universal gravitational constant in lb.ft square/slug square
r=10   //radius in ft
w=2000;     //weight in lb
g=32;   //gravitational constant in ft/sec square
m=w/g;  //calculating mass in slugs
F=(G*m*m)/(r*r);  //calculating gravitational force in lb
disp(F,"Gravitational force in lb = ");  //displaying gravitational force in lb

