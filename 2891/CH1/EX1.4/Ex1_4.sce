//Exa 1.4
clc;
clear;
close;
function[V]=crossprod(A,B) // defining a function v
V(1)=A(2)*B(3)-A(3)*B(2)
V(2)=A(3)*B(1)-A(1)*B(3)
V(3)=A(1)*B(2)-A(2)*B(1)
endfunction
//given:
A=[2,1,2] // vector A
B=[1,2,1] // vector B
P=crossprod(A,B)
disp(P,"cross product of vectors A and B:")
