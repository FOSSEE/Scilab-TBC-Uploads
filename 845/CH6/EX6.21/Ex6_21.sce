//Example 6.21

clc
clear

function [p] = cubicsplin(x,y)
// Fits point data to cubic spline fit

n = length(x);
a = y(1:n-1);   // Spline Initials

M1 = zeros(3*(n-1));
M2 = zeros(3*(n-1),1);
// Point Substitutions
for i = 1:n-1
    M1(i,i) = x(i+1) - x(i);
    M1(i,i+n-1) = (x(i+1) - x(i))^2;
    M1(i,i+2*(n-1)) = (x(i+1) - x(i))^3;
    M2(i) = y(i+1) - y(i);
end

// Knot equations
for i = 1:n-2
    // Derivative (S') continuity
    M1(i+n-1,i) = 1;
    M1(i+n-1,i+1) = -1;
    M1(i+n-1,i+n-1) = 2*(x(i+1)-x(i));
    M1(i+n-1,i+2*(n-1)) = 3*(x(i+1)-x(i))^2;
    // S'' continuity
    M1(i+2*n-3,i+n-1) = 2;
    M1(i+2*n-3,i+n) = -2;
    M1(i+2*n-3,i+2*(n-1)) = 6*(x(i+1)-x(i));
end
// Given BC
M1(3*n-4,1) = 1;
M1(3*n-3,n-1) = 1;
M1(3*n-3,2*n-2) = 2*(3-2);
M1(3*n-3,3*n-3) = 3*(3-2)^2;
M2(3*n-4) = 2;
M2(3*n-3) = 2;

var = M1\M2;
var = round(var);
b = var(1:n-1);
c = var(n:2*(n-1));
d = var(2*(n-1)+1:3*(n-1));

p = [a(:) b c d];
endfunction

x = 0:3;
y = [1 4 0 -2];
p = cubicsplin(x,y);
for i=1:length(p(:,1))
    disp(strcat(["S",string(i-1),"(x) = "]))
    disp(poly(p(i,:),"x",["coeff"]))
end
