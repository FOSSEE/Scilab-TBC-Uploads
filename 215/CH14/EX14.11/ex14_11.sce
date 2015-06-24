clc
//Example 14.11
//Install Symbolic toolbox
//Calculate f(inf)
syms s t ;
disp('Given function is f(t)=1-exp(-a*t)')
u=laplace(1)
v=laplace(exp(-2*t))
F=u-v
x=s*F
//From final value theorem
y=limit(x,s,0)
disp(y,'f(inf)=')

