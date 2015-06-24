//page 131
//Example 4.7
clc;
clear;
close;
x = poly(0,"x");
p1 = x + 2;
p2 = x^2 + 8*x + 16;
disp('M = (x+2)F[x] + (x^2 + 8x + 16)F[x]');
disp('We assert, M = F[x]');
disp('M contains:');
t = p2 - x*p1;
disp(t);
disp('And hence M contains:');
disp(t - 6*p1);
disp('Thus the scalar polynomial 1 belongs to M as well all its multiples.') 
//end
