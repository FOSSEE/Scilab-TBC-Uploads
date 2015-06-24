//page 121
//Example 4.3
clc;
clear;
close;
disp('C is the field of complex numbers');
x = poly(0,"x");
f = x^2 + 2;
disp(f,'f = ');
//part a
disp('if a = C and z belongs to C, then f(z) = z^2 + 2');
disp(horner(f,2),'f(2) = ');
disp(horner(f,(1+%i)/(1-%i)),'f(1+%i/1-%i) = ');
disp('----------------------------------------');
//part b
disp('If a is the algebra of all 2*2 matrices over C and');
B = [1 0;-1 2];
disp(B,'B = ');
disp(2*eye(2,2) + B^2,'then, f(B) = ');
disp('----------------------------------------');
//part c
disp('If a is algebra of all linear operators on C^3');
disp('And T is element of a as:');
disp('T(c1,c2,c3) = (i*2^1/2*c1,c2,i*2^1/2*c3)');
disp('Then, f(T)(c1,c2,c3) = (0,3*c2,0)');
disp('----------------------------------------');
//part d
disp('If a is the algebra of all polynomials over C');
g = x^4 + 3*%i;
disp(g,'And, g = ');
disp(horner(f,g),'Then f(g) = ');
//end
