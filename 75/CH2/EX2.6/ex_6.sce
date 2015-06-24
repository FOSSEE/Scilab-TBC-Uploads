    //    EXAMPLE3 (PG 76)
    //   f(x) = x^6- 12 * x^5 + 63 * x^4 - 216* x^3 + 567 * x^2 - 972 * x + 729
    //    or f(x) = (x^2+9)*(x-3)^4
    //    solving using Muller's method

deff('[y]=f(x)','y=(x^2+9)*(x-3)^4')

xset('window',2);                                   
x=-10:.1:10;                                             // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = (x^2+9)*(x-3)^4')


muller(0,.5,1,f)
