//page 239
//Example 7.3
clc;
clear;
close;
A = [5 -6 -6;-1 4 2;3 -6 -4];
disp(A,'A = ');
f = poly(A,"x");
disp('Characteristic polynomial for linear operator T on R^3 will be:');
disp(f,'f = ');
disp('or');
disp('(x-1)(x-2)^2');
x = poly(0,"x");
disp('The minimal polynomial for T is:');
p = (x-1)*(x-2);
disp(p,'p = ');
disp('or');
disp('p = (x-1)(x-2)');
disp('So in cyclic decomposition of T, a1 will have p as its T-annihilator.');
disp('Another vector a2 that generate cyclic subspace of dimension 1 will have its T-annihilator as p2.');
p2 = x-2;
disp(p2,'p2 = ');
disp(p*p2,'pp2 = ');
disp('i.e., pp2 = f');
disp('Therefore, A is similar to B');
B = [0 -2 0;1 3 0;0 0 2];
disp(B,'B = ');
disp('Thus, we can see thet Matrix of T in ordered basis is B');
//end
