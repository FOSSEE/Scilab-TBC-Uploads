    //    EXAMPLE1 (PG 76)
    //    f(x) = x^20 - 1
    //    solving using Muller's method


xset('window',1);                                   
x=-2:.01:4;                                       // defining the range of x.
deff('[y]=f(x)','y=x^20-1');                  //defining the cunction.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                   // instruction to plot the graph 
title(' y = x^20-1')

// from the above plot we can infre that the function has roots between   
// the intervals (0,1),(2,3).

        //sollution by muller method to 3 iterations.

muller(0,.5,1,f)

