//clear//
//Caption: Derivation of capacitance of a spherical capacitor
//Example7.4
//page 181
clc;
a = sym('a');
b = sym('b');
Vo = sym('Vo');
r = sym('r');
e = sym('e');
V = Vo*((1/r)-(1/b))/((1/a)-(1/b));
disp(V,'V =')
E = -diff(V,r)*ar;
disp(E,'E =')
D = e*E;
DN = D/ar;
disp(DN,'DN =')
S = float(4*%pi*r^2); //area of sphere
Q = DN*S;
disp(Q,'Q =')
C = Q/Vo;
disp(C,'Capacitance of a spherical capacitor =')
//Result
//V =  (1/r-1/b)*Vo/(1/a-1/b)   
//E =    ar*Vo/((1/a-1/b)*r^2)   
//DN =   e*Vo/((1/a-1/b)*r^2)   
//Q =    12.56637060469643*e*Vo/(1/a-1/b)   
//Capacitance of a spherical capacitor = 12.56637060469643*e/(1/a-1/b)
