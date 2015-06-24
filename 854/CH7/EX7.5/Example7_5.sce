//clear//
//Caption: Potential in spherical coordinates as a function of teta V(teta)
//Example7.5
//page 182
clc;
teta = sym('teta');
A = sym('A');
B = sym('B');
V = integ(A/float(sin(teta)),teta)+B;
disp(V,'V = ')
//Result
//V =  B+(log(cos(teta)-1)/2-log(cos(teta)+1)/2)*A  
//Equivalent to V = B+log(tan(teta/2))*A
