//clear//
//Example9.34:Unilateral Laplace Transform
//x(t) = s(t)+2u(t)+e^t.u(t)
syms t s;
a = 2;
X = laplace('2+%e^(t)',t,s);
Y = 1+X;
disp(X)
disp(Y)
//Result
// (2/s)+(1/(s-1))+1  
