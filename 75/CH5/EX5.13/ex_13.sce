        //    PG (307)

deff('[y]=f(x)','y=sqrt(-log(x))')
funcprot(0)
a=0;
b=1;

//    True value

I = integrate('sqrt(-log(x))','x',a,b)