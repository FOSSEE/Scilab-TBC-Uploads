//example(3.4)

    //here f(x)=1.5*x-tan(x)-0.1=0, according to fixed point iteration we get x=(0.1+tan(x))/1.5
   //where g(x)=x=(0.1+tan(x))/1.5
   //& xn=g(xn)
deff('[y]=g(x)','y=(0.1+tan(x))/1.5')
x=0

for n=1:1:10
    g(x);
    x=g(x)
end
