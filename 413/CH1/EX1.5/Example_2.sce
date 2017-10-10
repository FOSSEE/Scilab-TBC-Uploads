// Using Muller's method finding root of f(x)=3*x+sin(x)-exp(x), starting from 0 , 0.5 and 1 
clearglobal()
clc;
fx='3*x+sin(x)-exp(x)'
x0=0.5; x1=1.0; x2=0; fr=2;
tol=0.0000001
i=1;
while abs(fr)>tol 
x = x0;   f0=eval(fx);
x = x1;   f1=eval(fx);
x = x2;   f2=eval(fx);
h1=x1-x0; h2=x0-x2; h3=h2/h1;
c=f0;
a=(h3*f1-f0*(1+h3)+f2)/(h3*h1.^2 *(1+h3))
b=(f1-f0-a*h1.^2)/h1
if b>=0 then
    root=x0-2*c/(b+sqrtm(b*b-4*a*c))
else root=x0-2*c/(b-sqrtm(b*b-4*a*c))
end 
x = root;   fr=eval(fx);
if root>x0 then
    x1=x0;
    x2=x1;
    x0=root;
    
else 
    x1=root;
    
end
X=[i,a,b,c,root]
disp(X)
i=i+1;
end