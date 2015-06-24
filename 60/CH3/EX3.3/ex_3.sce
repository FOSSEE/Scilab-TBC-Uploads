//example(3.3)

                //here f(x)=e^(-x)-sin(x) ,according to fixed point iteration we take g(x)=x=x+e^(-x)-sin(x);
                   // so, xn=g(xn)
deff('[y]=g(x)','y=x+(2.718)^(-x)-sin(x)')
x=0.6
for n=1:1:18
 g(x);
   x=g(x)
end

