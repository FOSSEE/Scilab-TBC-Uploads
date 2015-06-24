//clear//
//Caption: Program to Determine the electric field of a two infinite radial planes with an interior angle alpha
//Example 7.3
//page 180
clc;
phi = sym('phi');
A = sym('A');
B = sym('B');
Vo = sym('Vo');
alpha = sym('alpha');
aphi = sym('aphi');
r = sym('r');
V = integ(A,phi)+B;
disp(V,'V =');
V = limit(V,B,0);
V = limit(V,A,Vo/alpha);
disp(V,'Potential V after applying boundary conditions =')
E = -(1/r)*diff(V,phi)*aphi;
disp(E,'E =')
//Result
// V =  B+phi*A   
// Potential V after applying boundary conditions =  phi*Vo/alpha   
// E =    -aphi*Vo/(alpha*r)   
