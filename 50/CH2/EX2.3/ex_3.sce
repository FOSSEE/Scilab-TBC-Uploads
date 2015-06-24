                                   // The equation x^3-5*x+1==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',2);                                   
x=-2:.01:4;                                             // defining the range of x.
deff('[y]=f(x)','y=x^3-5*x+1');                  //defining the cunction.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = x^3-5*x+1')

// from the above plot we can infre that the function has roots between   
// the intervals (0,1),(2,3).
// since we have been asked for the smallest positive root of the equation,
// we are intrested on the interval (0,1)
// a=0;b=1,

// we call a user-defined function 'bisection' so as to find the approximate 
// root of the equation with a defined permissible error.  

bisection(0,1,f)

// since in the example 2.3 we have been asked to perform 5 itterations
// the approximate  root after 5 iterations can be observed.



bisection5(0,1,f)  


// hence the approximate root after 5 iterations is 0.203125 witin the permissible error of 10^-4,