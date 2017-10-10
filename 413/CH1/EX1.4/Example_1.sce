clearglobal()
clc;
fx='x.^3+2*x.^2-x+5'
dfx='3*x.^2+4*x-1'
x0=2.5;
x = x0;   fa=eval(fx);
tol=0.0000001
while abs(fa)>tol
x = x0;   fa=eval(fx); dfa=eval(dfx)
x1=x0-fa/dfa;
     X = [x0,x1];
    disp(X)
    x0=x1
   end;