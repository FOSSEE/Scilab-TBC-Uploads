Syms t s
disp('f1(t)=coswt ,  f2(t)=sinwt')
disp('laplace of f1(t) and f2(t) are')
y=laplace('cos(w*t)',t,s)
z=laplace('sin(w*t)',t,s)
disp(y)
disp(z)
