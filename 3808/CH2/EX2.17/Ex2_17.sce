//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

A = [[1,1],
[2,1]]

B = [[2,1],
[1,1]]

m1=A*B
m2=B*A

disp(m1,'A*B=')
disp(m2,'B*A=')

if m1==m2 then
    disp('AB=BA')
else
    disp('AB!=BA')
end
