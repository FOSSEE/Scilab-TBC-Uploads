                                   // The equation cos(x)-x*%e^x==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',3);                                   
x=0:.01:2;                                             // defining the range of x.
deff('[y]=f(x)','y=cos(x)-x*%e^x');                  //defining the cunction.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = cos(x)-x*%e^x')

// from the above plot we can infre that the function has root between   
// the interval (0,1)


// a=0;b=1,

// we call a user-defined function 'bisection' so as to find the approximate 
// root of the equation with a defined permissible error.  

bisection(0,1,f)

// since in the example 2.4 we have been asked to perform 5 itterations ,

bisection5(0,1,f)  


// hence the approximate root after 5 iterations is 0.515625 witin the permissible error of 10^-4,