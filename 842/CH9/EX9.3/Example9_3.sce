//clear//
//Example9.3:Lapalce Transform x(t) = 3exp(-2t)u(t)-2exp(-t)u(t)
syms t s;
y = laplace('3*%e^(-2*t)-2*%e^(-t)',t,s);
disp(y)
//Result
//(3/(s+2))-(2/(s+1))  
