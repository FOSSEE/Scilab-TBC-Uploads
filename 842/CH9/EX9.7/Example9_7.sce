//clear//
//Example9.7
//Lapalce Transform x(t) = exp(-b.abs(t)).u(t), 0<t<T
//x(t) = exp(-bt).u(t)+exp(bt).u(-t)
syms t s;
b = 3;
y = laplace('%e^(-b*t)-%e^(b*t)',t,s);
disp(y)
//Result
// [1/(s+b)]-[1/(s-b)] 
