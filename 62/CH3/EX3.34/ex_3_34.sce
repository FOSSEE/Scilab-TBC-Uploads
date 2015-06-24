syms t s
X1=laplace(%e^(-2*t))
X2=laplace(exp(2*t))
X=X1-X2
disp(X,"bilateral transform of x(t)=")