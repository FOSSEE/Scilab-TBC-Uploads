//signals and systems
//Laplace Transform x(t) = exp(-at).u(t) for t negative and positive
syms t s;
a = 3;
y =laplace('%e^(-a*t)',t,s);
t1=0:0.001:10;
plot2d(t1,exp(-a*t1));
disp(y)
y1 = laplace('%e^(a*-t)',t,s);
disp(y1)
