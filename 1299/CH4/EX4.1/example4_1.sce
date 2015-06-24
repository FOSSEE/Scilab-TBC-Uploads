//Example 4.1
//state equation
clear;clc;
xdel(winsid());

A=[0 1;-2 -3]
B=[0;1]
C=[0]
[Ac Bc U ind]=canon(A,B);
disp(clean(Ac),'Ac=');
disp(clean(Bc),'Bc=');
disp(U,'transformation matrix U=');
