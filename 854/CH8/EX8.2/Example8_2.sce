//clear//
//Caption: Program to find the curlH of a square path of side 'd'
//Example8.2
//page 230
clc;
ax = sym('ax');
az = sym('az');
ay = sym('ay');
z = sym('z');
y  = sym('y');
d = sym('d');
H = 0.2*z^2*ax;
Hx = float(H/ax);
HdL = float(0.4*z*d^2);
//curlH evaluated from the definition of curl
curlH = (HdL/(d^2))*ay;
//curlH evaluated from the determinant
del_cross_H = -ay*(-diff(Hx,z))+az*(-diff(Hx,y));
disp(curlH,'curlH = ')
disp(del_cross_H,'del_cross_H = ')
//Result
//curlH =  0.4*ay*z   
//del_cross_H = 0.4*ay*z 
