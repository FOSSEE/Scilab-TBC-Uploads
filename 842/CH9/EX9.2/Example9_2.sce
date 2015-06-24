//clear//
//Example9.2:Lapalce Transform x(t) = -exp(-at).u(-t)
syms t s;
a =3;
y = laplace('%e^(a*-t)',t,s);
disp(y)
//Result
//1/(s+a) 
