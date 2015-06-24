clear
clc
disp("the equations can be re written as AX=B where X=[x1;x2;x3;x4] and ")
A=[1 -1 1 1;1 1 -1 1;1 1 1 -1;1 1 1 1]
B=[2;-4;4;0]
disp("determinant of A=")
det(A)
disp("inverse of A =")
inv(A)
disp("X=")
inv(A)*B