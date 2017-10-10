//page 352
//Example 9.1
clc;
clear;
close;
disp('A = ');
disp('r    *     |cos(thetha)       -sin(thetha)|');
disp('           |sin(thetha         cos(thetha)|');
disp('Characteristic polynomial for T:');
disp('p = det(xI - A)');
disp('p = x - 2*r*cos(thetha*x) + r^2 ');
disp('if, a = r*cos(thetha)');
disp('b = r*sin(thetha)');
disp('c = a + ib,   b is not equal to 0');
disp('Then, A = ');
disp('a     -b');
disp('b      a');
disp('p = (x-c)(x-c'')');
disp('So, p is reducible over R and it is the minimal polynomial');
//end
