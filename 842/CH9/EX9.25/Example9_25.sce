//clear//
//Example9.25:LTI Systems Characterized by Linear Constant
//Coefficient differential Equation
//Finding Transfer function H(S) of LTI system
//x(t) = exp(-3t).u(t)
//y(t) = [exp(-t)-exp(-2t)].u(t) 
syms t s;
X = laplace('%e^(-3*t)',t,s);
Y = laplace('%e^(-t)-%e^(-2*t)',t,s);
H = Y/X;
disp(H)
//Result
//(s+3)*(1/(s+1)-1/(s+2))   
