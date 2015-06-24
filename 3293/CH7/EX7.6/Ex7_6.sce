//page 247
//Example 7.6
clc;
clear;
close;
disp('A = ');
disp('2   0   0');
disp('a   2   0');
disp('b   c   -1');
a = 1;
b = 0;
c = 0;
A = [2 0 0;a 2 0;b c -1];
disp(A,'A = ');
disp('Characteristic polynomial for A is:');
disp(poly(A,"x"),'p = ');
disp('In this case, minimal polynomial is same as characteristic polynomial.');
disp('-----------------------------------------');
a = 0;
b = 0;
c = 0;
A = [2 0 0;a 2 0;b c -1];
disp(A,'A = ');
disp('Characteristic polynomial for A is:');
disp(poly(A,"x"),'p = ');
disp('In this case, minimal polynomial is:');
disp('(x-2)(x+1)');
disp('or');
x = poly(0,"x");
s = (x-2)*(x+1);
disp(s);
disp('(A-2I)(A+I) = ');
disp('0    0   0');
disp('3a   0   0');
disp('ac   0   0');
disp('if a = 0, A is similar to diagonal matrix.')
//end
