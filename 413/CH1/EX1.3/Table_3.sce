//The regula falsi method for f(x)=3*x+sin(x)-exp(x), starting from 0 and 1 
clearglobal()
clc;
fx='3*x+sin(x)-exp(x)' //Define function here
x0=0; // intial value
x1=1;// final vale where root need to bracket
x2=4;//just to start loop
x = x0;   fa=eval(fx);
x = x1;   fb=eval(fx);
tol=0.0000001;
x = x2;   fc=eval(fx);
i=1;
if fa*fb<0 then
while abs(fc)>tol
    x = x0;   fa=eval(fx);
    x = x1;   fb=eval(fx);
    
    x2=x1-fb*(x0-x1)/(fa-fb);
    x = x2;   fc=eval(fx);
     X = [i,x0,x1,x2,fc];
    disp(X)
    if fc*fa < 0 then
     x1 = x2;
  else x0 = x2;
  end;
    i=i+1;
end;
end