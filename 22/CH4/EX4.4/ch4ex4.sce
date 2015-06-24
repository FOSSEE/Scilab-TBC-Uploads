//signals and systems
//Lapalce Transform x(t) = (t-1)u(t-1)-(t-2)u(t-2)-u(t-4), 0<t<T
syms t s;
a = 3;
T = 1;
//t = T;
y1 = laplace('t',t,s);
y2 = laplace('t',t,s);
y3 = laplace('1',t,s);
y=y1*(%e^(-s))+y2*(%e^(-2*s))+y3*(%e^(-4*s))
disp(y)