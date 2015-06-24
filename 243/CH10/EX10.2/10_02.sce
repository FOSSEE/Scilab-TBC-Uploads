//Example No. 10_02
//Fitting a Power-Function model to given data
//Pg No. 331
clear ;close ;clc ;

x = poly(0,'x');
X = 1:5
Y = [ 0.5 2 4.5 8 12.5 ]
Xnew = log(X)
Ynew = log(Y)
n = length(Xnew)
b = ( n*sum(Xnew.*Ynew) - sum(Xnew)*sum(Ynew) )/( n*sum(Xnew.*Xnew) - ( sum(Xnew) )^2 )
lna = sum(Ynew)/n - b*sum(Xnew)/n
a = exp(lna)
disp(b,'b = ')
disp(lna,'lna = ')
disp(a,'a = ')
printf('\n The power function equation obtained is \n y = %.4Gx^%.4G',a,b);
