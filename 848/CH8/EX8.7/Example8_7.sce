//clear//
//Caption: Program to find CRC(Cyclic Redundancy Check)
//Example8.7
//page 308
clear;
clc;
close;
x = poly(0,'x');
m = [1,1,1,1,0];
G = x^7+x^6+x^5+x^4+0+0+0+0;
D = x^3+0+x+1;
[R,Q]  = pdiv(G,D)
R = coeff(R);
Q = coeff(Q);
R = abs(modulo(R,2));
Q = abs(modulo(Q,2));
disp(R,'Remainder R =')
disp(Q,'Quotient Q =')
disp([m R],'CRC for the given information CRC =')
//Result 
//Remainder R =   
//     1.    0.    1.  
//Quotient Q =   
//     1.    1.    0.    1.    1.  
//CRC for the given information CRC =   
//     1.    1.    1.    1.    0.    1.    0.    1. 
