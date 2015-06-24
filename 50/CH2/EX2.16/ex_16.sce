                                   // The equation x^3-5*x+1==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',15);                                   
x=-2:.01:4;                                             // defining the range of x.
deff('[y]=f(x)','y=x^3-5*x+1');                  //defining the function.
deff('[y]=fp(x)','y=3*x^2-5');
deff('[y]=fpp(x)','y=6*x');
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


//                solution by multipoint iteration method

// the approximate  root after 3 iterations can be observed.


multipoint_iteration31(0.5,f,fp)  

// hence the approximate root  witin the permissible error of 10^-15 is .201640,



multipoint_iteration33(0.5,f,fp)
  
// hence the approximate root  witin the permissible error of 10^-15 is .201640,