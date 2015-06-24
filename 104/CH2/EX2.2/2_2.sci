//laplace transform of exponential function
 syms t s;
 y=laplace('%e^(-1*t)',t,s);
 disp(y,"ans=")
