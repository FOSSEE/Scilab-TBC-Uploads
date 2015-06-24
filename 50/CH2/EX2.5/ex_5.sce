                                   // The equation x^3-5*x+1==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',4);                                   
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
// since we have been given the interval  to be considered as (0,1)
// a=0;b=1,


                                // Solution by secant method





// since in the example 2.5 we have been asked to perform 4 itterations ,
secant4(0,1,f)            // we call a user-defined function 'bisection' so as to find the approximate 
// root of the equation with a defined permissible error.  



// hence the approximate root occured in secant method after 4 iterations is 0.201640 witin the permissible error of 10^-4,



                              // solution by regular falsi  method


// since in the example 2.5 we have been asked to perform 4 itterations ,

regulafalsi4(0,1,f)            // we call a user-defined function 'regularfalsi4' so as to find the approximate 
// root of the equation with a defined permissible error.  



// hence the approximate root occured in regularfalsi method after 4 iterations is 0.201640 witin the permissible error of 10^-4,