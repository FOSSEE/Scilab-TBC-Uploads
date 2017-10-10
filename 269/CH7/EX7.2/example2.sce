Syms t,s
disp('given')
disp(' f(t)= e^at ,a>0')
disp('laplace of f(t) is')
y=laplace('exp(a*t)', t,s)
disp(y)
