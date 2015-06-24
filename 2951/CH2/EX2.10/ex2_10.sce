

//x(t) = del(t)
syms t s;

L =laplace('delta(t)',t,s)
disp(L)
// x(t) = u(t)

L1 =laplace('1',t,s);
disp(L1)
//x(t) = sin(w0*t)u(t)

L2 =laplace('sin(w0*t)',t,s);
disp(L2)
