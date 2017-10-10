//The bisection method for f(x)=3*x+sin(x)-exp(x), starting from 0 and 1 in 13 iterations)

clearglobal()
clc;
fx='3*x+sin(x)-exp(x)'//Define function here
xa=0;   // intial value
xb=1;  // final vale where root need to bracket
n=13;  // no. of iterations
x = xa;   fa=eval(fx);
x = xb;   fb=eval(fx);
   for i=1:n  
   xc = (xa+xb)/2;  x = xc;  fc = eval(fx);  
    X = [i,xa,xb,xc,fc];
  disp(X)
  if fc*fa < 0 then
    xb = xc;
  else xa = xc;
  end;
  end;

