//Example 2.16
//To find input h(n)
//a=[1 2 -4 1], b=[1]
clear;
clc ;
close ;
z=%z;
a=z^3+2*(z^(2))-4*(z)+1;
b=z^3;
h =ldiv(a,b,4);
disp (h,"h(n)=");