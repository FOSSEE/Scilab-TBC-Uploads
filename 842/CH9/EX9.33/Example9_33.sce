//clear//
//Example9.33:Unilateral Laplace Transform:Time Shifting Property
//x(t) = exp(-a(t+1)).u(t+1)
syms t s;
a = 2;
X = laplace('%e^(-a*(t+1))',t,s);
disp(X)
//Result
//%e^-a/(s+a)    
