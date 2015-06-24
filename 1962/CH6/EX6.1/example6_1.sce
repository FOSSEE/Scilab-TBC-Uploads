
//example 6.1
//page 224
clc; funcprot(0);
//initialisation of variable
//part1;
//solving for powers of M,L,T
A=[1 0 0;-3 1 1;0 -1 0];
b=[-1;-1;2];
x=A\b;
disp("in non dimensional term")
disp(x(1),"power of M");
disp(x(2),"power of L");
disp(x(3),"power of T");
//part2
//solving for powers of M,L,T
A=[1 0 0;-3 1 1;0 -1 0];
b=[-1;1;1];
x=A\b;
disp("in non dimensional term")
disp(x(1),"power of M");
disp(x(2),"power of L");
disp(x(3),"power of T");
clear
