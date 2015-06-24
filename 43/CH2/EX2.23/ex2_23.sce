syms a t;
x=exp(-a*t);
y=diff(x,t)
X=laplace(y);