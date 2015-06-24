//page 247
//Example 7.7
clc;
clear;
close;
disp('A = ');
disp('2   0   0   0');
disp('1   2   0   0');
disp('0   0   2   0');
disp('0   0   a   2');
disp('Considering a = 1');
A = [2 0 0 0;1 2 0 0;0 0 2 0;0 0 1 2];
p = poly(A,"x");
disp('Characteristic polynomial for A is:');
disp(p,'p = ');
disp('or');
disp('(x-2)^4');
disp('Minimal polynomial for A =');
disp('(x-2)^2');
disp('For a = 0 and a = 1, characteristic and minimal polynomial are same.');
disp('But for a=0, the solution space of (A - 2I) has 3 dimension whereas for a = 1, it has 2 dimension. ')
//end
