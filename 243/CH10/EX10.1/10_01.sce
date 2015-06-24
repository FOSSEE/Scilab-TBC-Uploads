//Example No. 10_01
//Fitting a Straight Line
//Pg No. 326
clear ;close ;clc ;

x = poly(0,'x')
X = 1:5
Y = [ 3 4 5 6 8 ];
n = length(X);
b = ( n*sum(X.*Y) - sum(X)*sum(Y) )/( n*sum(X.*X) - (sum(X))^2 )
a = sum(Y)/n - b*sum(X)/n
disp(b,'b = ')
disp(a,'a = ')
y = a + b*x
