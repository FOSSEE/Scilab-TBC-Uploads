//clear//
//Caption:Syndrome calculator for the(7,4) Cyclic Hamming Code
//Example8.5: Syndrome calculator
//message sequence = [0,1,1,1,0,0,1]
clc;
D = poly(0,'D');
g = 1+D+0+D^3; //generator polynomial
C1 = 0+D+D^2+D^3+0+0+D^6;//error free codeword
C2 = 0+D+D^2+0+0+0+D^6;//middle bit is error
[r1,q1] = pdiv(C1,g);
S1 = coeff(r1);
S1 = modulo(S1,2);
disp(r1,'remainder in polynomial form')
disp(S1,'Syndrome bits for error free codeword are:')
[r2,q2] = pdiv(C2,g);
S2 = coeff(r2);
S2 = modulo(S2,2);
disp(r2,'remainder in polynomial form for errored codeword')
disp(S2,'Syndrome bits for errored  codeword are:')
