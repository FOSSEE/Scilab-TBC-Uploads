//clear//
//Example9.6
//Lapalce Transform x(t) = exp(-at)u(t), 0<t<T
syms t s;
a = 3;
T = 10;
//t = T;
y = laplace('%e^(-a*t)-%e^(-a*t)*%e^(-(s+a)*T)',t,s);
disp(y)
//Result
// [1/(s+a)]-[(exp((-s-a)*T))/(s+a)] 
