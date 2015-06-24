//clear//
//Example9.21:Analysis and Characterization of LTI System
//Lapalce Transform h(t) = exp(2t)u(t), Re(s)>2
syms t s;
X = laplace('%e^(2*t)',t,s);
disp(X)
//Result
//1/(s-2)  
