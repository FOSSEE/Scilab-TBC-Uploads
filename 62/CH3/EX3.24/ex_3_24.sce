syms t s a
H=laplace(%e^(-a*t))
X=laplace(-%e^(a*t))
Y=X*H
y=ilaplace(Y)
disp(y,"y(t)=")