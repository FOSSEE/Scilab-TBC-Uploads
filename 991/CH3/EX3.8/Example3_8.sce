//Example 3.8
clc
function [radians] = degrees2radians(degrees);
radians = degrees*(%pi/180);
endfunction
radians=degrees2radians(25)
q=1.6*10^-19
m=9.1*10^-31
V=50
Q=3*q
M=2*m
format(8)
v=sqrt(2*Q*V/M)
disp("(i) The velocity of the charged particle before entering the field is,")
disp(v,"v(m/s) = sqrt(2aV/m) * sqrt(2(3q)V/2m) = sqrt(6qV/2m) =")
B=0.02
format(6)
r=(M*v*sin(radians))/(Q*B)
r1=r*10^3
disp("(ii) The radius of the helical path is")
disp(r1,"r(mm) = Mvsine(theta) / QB = 2mvsine(theta) / 3qB =")
format(9)
T=(2*%pi*M)/(B*Q)
disp("(iii) Time for one revolution,")
disp(T,"T(seconds) = 2*pi*M / B*Q = 2*pi*(2m) / B(3q) =")