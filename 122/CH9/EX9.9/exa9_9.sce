// Example 9-9
// Linear dependence of vectors

clear; clc;
xdel(winsid());  //close all windows
mode(0)

x1 = [1; 2; 3]
x2 = [1; 0; 1]
x3 = [2; 2; 4]
A = [x1 x2 x3];
disp(A,'[x1:x2:x3] =');
disp(clean(det(A)),'det([x1:x2:x3]) ='); // singular

x3 = [2;2;2]
A = [x1 x2 x3];
disp(A,'[x1:x2:x3] =');
disp(det(A),'det([x1:x2:x3]) =');// non singular
