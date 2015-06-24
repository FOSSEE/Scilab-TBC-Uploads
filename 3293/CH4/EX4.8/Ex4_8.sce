//page 133
//Example 4.8
clc;
clear;
close;
x = poly(0,"x");
//part a
p1 = x + 2;
p2 = x^2 + 8*x + 16;
disp(p1,'p1 = ');
disp(p2,'p2 = ');
disp('M = (x+2)F[x] + (x^2 + 8x + 16)F[x]');
disp('We assert, M = F[x]');
disp('M contains:');
t = p2 - x*p1;
disp(t);
disp('And hence M contains:');
disp(t - 6*p1);
disp('Thus the scalar polynomial 1 belongs to M as well all its multiples');
disp('So, gcd(p1,p2) = 1');
disp('----------------------------------------------');
//part b
p1 = (x - 2)^2*(x+%i);
p2 = (x-2)*(x^2 + 1);
disp(p1,'p1 = ');
disp(p2,'p2 = ');
disp('M = (x - 2)^2*(x+%i)F[x] + (x-2)*(x^2 + 1');
disp('The ideal M contains p1 - p2 i.e.,');
disp(p1 - p2);
disp('Hence it contains (x-2)(x+i), which is monic and divides both,');
disp('So, gcd(p1,p2) = (x-2)(x+i)');
disp('----------------------------------------------');
//end
