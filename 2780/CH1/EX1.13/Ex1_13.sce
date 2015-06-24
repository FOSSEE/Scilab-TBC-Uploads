clc
//to calculate velocity
c=3*10^8 // light velocity
v=0.75*c //speed of A
ux=-0.85*c //speed of B
ux1=(ux-v)/(1-ux*v/c^2)
disp(ux1,'velocity of B with respect to A (m/s) is :')
//answer is given in terms of c in the book=-0.9771c
