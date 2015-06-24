//page 147
//Example 5.5
clc;
clear;
close;
function [E1 , E2 , E3] = determinant(A)
    E1 = A(1,1)*det([A(2,2) A(2,3);A(3,2) A(3,3)]) - A(2,1)*det([A(1,2) A(1,3);A(3,2) A(3,3)]) + A(3,1)*det([A(1,2) A(1,3);A(2,2) A(2,3)]);
    E2 = -A(1,2)*det([A(2,1) A(2,3);A(3,1) A(3,3)]) + A(2,2)*det([A(1,1) A(1,3);A(3,1) A(3,3)]) + A(3,2)*det([A(1,1) A(1,3);A(2,1) A(2,3)]);
    E3 = A(1,3)*det([A(2,1) A(2,2);A(3,1) A(3,2)]) - A(2,3)*det([A(1,1) A(1,2);A(3,1) A(3,2)]) + A(3,3)*det([A(1,1) A(1,2);A(2,1) A(2,2)]);
endfunction

//part a
x = poly(0,"x");
A = [x-1 x^2 x^3;0 x-2 1;0 0 x-3];
disp(A,'A = ');
[E1, E2, E3] = determinant(A);
disp(E1,'E1(A) = ');
disp(E2,'E2(A) = ');
disp(E3,'E3(A) = ');
disp('--------------------------------------');
//part b
A = [0 1 0;0 0 1;1 0 0];
disp(A,'A = ');
[E1, E2, E3] = determinant(A);
disp(E1,'E1(A) = ');
disp(E2,'E2(A) = ');
disp(E3,'E3(A) = ');
//end
