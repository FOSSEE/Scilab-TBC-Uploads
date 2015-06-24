//clear//
//Example9.18:Analysis and Characterization of LTI System
//Lapalce Transform x(t) = exp(-abs(t))
//x(t) = exp(-t).u(t)+exp(t).u(-t)
syms t s;
y = laplace('%e^(-t)-%e^(t)',t,s);
disp(y)
//Result
//  (1/(s+1))-(1/(s-1))  
