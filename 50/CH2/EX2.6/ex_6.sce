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


                                // Solution by secant method





// since in the example 2.6 we have no specification of the no. of itterations ,
// we define a function 'secant' and execute it.



secant(0,1,f)            // we call a user-defined function 'secant' so as to find the approximate 
// root of the equation with a defined permissible error.  



// hence the approximate root occured in secant method witin the permissible error of 10^-5 is  ,



                              // solution by regular falsi  method





// since in the example 2.6 we have no specification of the no. of itterations ,


regulafalsi(0,1,f)            // we call a user-defined function 'regularfalsi' so as to find the approximate 
// root of the equation with a defined permissible error.  


