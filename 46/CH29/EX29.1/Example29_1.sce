//Example 29.1
clc
syms t tau
A=[-1 1;0 -2]
B=[0;1]
x0=[-1;0]
printf("x1=Ax+Bu(t)")
//On solving given equation
//let X=exp(A*t)
X=[exp(-t) exp(-t)-exp(-2*t);0 exp(-2*t)]
//Y=exp(A*(t-tau))
Y=[exp(-(t-tau) ) exp(-(t-tau))-exp(-2*(t-tau));0 exp(-2*(t-tau))]
//From Eq.(29.4)
xt=X*x0+integ(Y*B,tau,0,t)