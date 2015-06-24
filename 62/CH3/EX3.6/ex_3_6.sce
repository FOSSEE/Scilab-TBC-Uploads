syms t s a
y=laplace(%e^(-a*t)-%e^(a*t))
disp(y,"X(s)=")
s1=%s;
//a>0
a=2;
t=-5:0.1:5;
x=%e^(-a*abs(t));
subplot(2,1,1)
plot(t,x)
subplot(2,1,2)
x=1/(s1+a)-1/(s1-a);
plzr(x)
//a<0
a=-0.5;
t=-5:0.1:5;
x=%e^(-a*abs(t));
figure
subplot(2,1,1)
plot(t,x)
subplot(2,1,2)
x=1/(s1+a)-1/(s1-a);
plzr(x)
disp("there is no region of convergence when a<0 hence no transform exists for a<0")

