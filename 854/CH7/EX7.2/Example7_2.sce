//clear//
//Caption: Capacitance of a Cylindrical Capacitor
//Example7.2
//page 179
clc;
A = sym('A');
B = sym('B');
r = sym('r');
ar = sym('ar');
ruo = sym('ruo');
a = sym('a');
b = sym('b');
L = sym('L');
Vo = sym('Vo');
V = integ(A/r,r)+B;
disp(V,'Potential V = ')
V = limit(V,A,Vo/log(a/b));
V = limit(V,B,-Vo*log(b)/log(a/b));
disp(V,'Potential V by substitute the values of constant A & B = ')
V = Vo*log(b/r)/log(b/a);
E = -diff(V,r)*ar;
disp(E,'E = ');
E = limit(E,r,a);
disp(E,'E at r =a is =')
D = e*E;
DN = D/ar;
disp(DN,'DN =')
S = float(2*%pi*a*L); //area of cylinder
Q = DN*S
disp(Q,'Q =')
C = Q/Vo;
disp(C,'Capacitance of a cylindrical Capacitor C =')
//Result
// Potential V =  B+log(r)*A   
// Potential V by substitute the values of constant A & B =(log(r)-log(b))*Vo/log(a/b)   
// E = ar*Vo/(log(b/a)*r)   
// E at r =a is =  ar*Vo/(a*log(b/a))   
// DN = e*Vo/(a*log(b/a))   
// Q = 6.283185306023805*e*Vo*L/log(b/a)   
// Capacitance of a cylindrical Capacitor C = 6.283185306023805*e*L/log(b/a)  
