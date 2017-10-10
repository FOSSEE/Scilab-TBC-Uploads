syms t s w;
y=laplace('sin(w*t)',t,s);
disp(y,"ans=")