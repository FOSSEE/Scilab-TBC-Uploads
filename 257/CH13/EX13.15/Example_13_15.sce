syms t a1 a2 a3 a4
X=[%e^(-3*t); -3*%e^(-3*t)]
X1=diff(X,t)

x=[1;-3]
x1=[-3;9]
A=x1/x

disp(A," A= ")