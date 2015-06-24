clc;
clear all;
// Intercpet along X-axis is 2a
// Intercpet along Y-axis is 3b
// Intercpet along Z-axis is 4c
// So x=2,y=3,z=4
x=2;// Coefficient of intercept
y=3;//Coefficient of intercept
z=4;//Coefficient of intercept
p1 = (1/x);// Inverse of Coefficient
p2= (1/y);// Inverse of Coefficient
p3= (1/z);// Inverse of Coefficient
p = [p1,p2,p3]
[pp fact] = lcm(p)
h = p1*(1/fact(1))
k = p2*(1/fact(1))
l = p3*(1/fact(1))
disp('',l, k, h,'The miller indices of plane is')
