clc;
eo=8.85*10^-12;  //constant
E=9*10^4;   //Electric field in N/C
r=2*10^-2;   //r in m
L=2*(%pi)*E*eo*r;  //calculating linear charge density
disp(L,"Linear charge density per cm = ");  //displaying result