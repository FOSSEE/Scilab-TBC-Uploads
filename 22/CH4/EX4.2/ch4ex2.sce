//signals and systems
//(a) laplace transform x(t) = del(t)
syms t s;

y =laplace('0',t,s)
disp(y)
//(b) Laplace Transform x(t) = u(t)

y1 =laplace('1',t,s);
disp(y1)
//(c) laplace transform x(t) = cos(w0*t)u(t)

y2 =laplace('cos(w0*t)',t,s);
disp(y2)