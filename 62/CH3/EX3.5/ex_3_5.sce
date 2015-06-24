clc
syms t s 
s1=%s;
x=laplace(exp(-2*t)+exp(-3*t),t,s)
y=laplace(exp(-3*t)-%e^(2*t))
z=laplace(%e^(2*t)-%e^(-3*t))
disp(z,y,x,"laplace transform of a b c is")
x=1/(s1+2)+1/(s1+3);
plzr(x)
y=1/(s1+3)-1/(s1-2);
figure
plzr(y)
z=1/(s1-2)-1/(s1+3);
figure
plzr(z)
disp("there is no region of convergence for c hence no transform exists")
