                               // The equation x^3-5*x+1==0 has  real roots.
                          // the graph of this function can be observed here.
xset('window',10);                                   
x=-2:.01:4;                                       // defining the range of x.
deff('[y]=f(x)','y=x^3-5*x+1');                  //defining the cunction.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                   // instruction to plot the graph 
title(' y = x^3-5*x+1')

// from the above plot we can infre that the function has roots between   
// the intervals (0,1),(2,3).
// since we have been asked for the smallest positive root of the equation,
// we are intrested on the interval (0,1)


        //sollution by muller method to 3 iterations.
        
muller3(0,.5,1,f)

