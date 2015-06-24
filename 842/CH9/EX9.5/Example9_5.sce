//clear//
//Example9.5:Lapalce Transform of x(t)=s(t)-(4/3)exp(-t)u(t)+(1/3)exp(2t)u(t)
syms t s;
y = laplace('-(4/3)*%e^(-t)+(1/3)*%e^(2*t)',t,s);
y = 1+y;
disp(y)
//Result
//[-4/(3*(s+1))]+[1/(3*(s-2))]+1     
