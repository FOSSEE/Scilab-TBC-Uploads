//page 41
//Example 2.12
clear;
clc;
close;
a1 = [3 0 -3];
a2 = [-1 1 2];
a3 = [4 2 -2];
a4 = [2 1 1];
disp(a1, 'a1 = ');
disp(a2, 'a2 = ');
disp(a3, 'a3 = ');
disp(a4, 'a4 = ');
t = 2 * a1 + 2 * a2 - a3 + 0 * a4;
disp(' = 0',t,' Since, 2 * a1 + 2 * a2 - a3 + 0 * a4 = ');
disp('a1,a2,a3,a4 are linearly independent');
e1 = [1 0 0];
e2 = [0 1 0];
e3 = [0 0 1];
disp(e1, 'Now, e1 = ');
disp(e2, 'e2 = ');
disp(e3, 'e3 = ');
disp('Also, e1,e2,e3 are linearly independent.');
//end
