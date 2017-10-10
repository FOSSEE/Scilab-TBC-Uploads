//laplace transform of exponential function
 syms t s;
 y=laplace('%e^(-a*t)',t,s);
 disp(y,"ans=")
