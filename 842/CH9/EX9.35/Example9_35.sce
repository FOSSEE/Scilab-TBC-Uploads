//clear//
//Example9.35:Unilateral Inverse Laplace Transform
//X(S) = 1/((s+1)(s+2))
s = %s;
syms t;
X = 1/((s+1)*(s+2));
x = ilaplace(X,s,t);
disp(X)
disp(x)
//Result
// (%e^-t)-(%e^-(2*t)) 
