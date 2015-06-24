//clear//
//Caption: Derivation of capacitance of a parallel plate capacitor
//Example7.1
//page 177
clc;
x = sym('x');
d = sym('d');
Vo = sym('Vo');
e = sym('e');
ax = sym('ax');
A = sym('A');
B = sym('B');
S = sym('S');
V = integ(A,x)+B;
V = limit(V,A,Vo/d);
V = limit(V,B,0);
disp(V,'Potential in Volts V =')
E = -diff(V,x)*ax;
disp(E,'Electric Field in V/m E =')
D = e*E;
DN = D/ax;
disp(D,'Electric Flux Density in C/square metre D =')
Q = -DN*S;
disp(Q,'Charge in Coulombs Q =')
C = Q/Vo;
disp(C,'Capacitance of parallel plate capacitor C =')
//Result
//Potential in Volts V =   Vo*x/d   
//Electric Field in V/m E =   -ax*Vo/d   
//Electric Flux Density in C/square metre D =  -ax*e*Vo/d   
//Charge in Coulombs Q =   e*Vo*S/d   
//Capacitance of parallel plate capacitor C =  e*S/d   
