//The secant method for f(x)=3*x+sin(x)-exp(x), starting from 0 and 1 )
clearglobal()
clc;
fx='3*x+sin(x)-exp(x)'//Define function here
x0=0;// intial value
x1=1;// second vale
x2=4; //just to start loop
tol=0.0000001; // tolerence value
x = x0;   fa=eval(fx);
x = x1;   fb=eval(fx);
x = x2;   fc=eval(fx);
i=1;
while abs(fc)>tol
    if abs(fa)<abs(fb) then
    xc=x0;
    x0=x1;
    x1=xc;  
    end
    x = x0;   fa=eval(fx);
    x = x1;   fb=eval(fx);
    x2=x1-fb*(x0-x1)/(fa-fb);
    x = x2;   fc=eval(fx);
     X = [i,x0,x1,x2,fc];
    disp(X)
    x0=x1;
    x1=x2;
    i=i+1;
end;