//page 294
//Example 8.17
//Equation given in example 14 is used.
clc;
clear;
close;
function [m] = transform(x,y,z)
    x1 = 3*x;
    x2 = 12*y;
    x3 = -z;
    m = [x1 x2 x3];
endfunction

disp('Matrix of projection E in orthonormal basis is:');
t1 = transform(3,3,3);
t2 = transform(12,12,12);
t3 = transform(-1,-1,-1);
A = [t1; t2; t3];
disp(A,'A = 1/154  *  ');
A1 = (conj(A))';
disp(A1,'A* = ');
disp('Since, E = E* and A = A*, then A is also the matrix of E*');
a1 = [154 0 0];
a2 = [145 -36 3];
a3 = [-36 10 12];
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp(a3,'a3 = ');
disp('{a1,a2,a3} is the basis.');
Ea1 = [9 36 -3];
Ea2 = [0 0 0];
Ea3 = [0 0 0];
disp(Ea1,'Ea1 = ');
disp(Ea2,'Ea2 = ');
disp(Ea3,'Ea3 = ');
B = [-1 0 0;-1 0 0;0 0 0];
disp('Matrix B of E in the basis is:');
disp(B,'B = ');
B1 = (conj(B))';
disp(B1,'B* = ');
disp('Since, B is not equal to B*, B is not the matrix of E*');
//end
