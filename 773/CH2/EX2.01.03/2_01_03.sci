//laplace// 
syms t s;
 y=laplace('2*t-3*%e^(-t)',t,s);
 disp(y,"ans=")
