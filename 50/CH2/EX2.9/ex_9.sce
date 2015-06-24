                                   // The equation cos(x)-x*%e^x==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',8);                                   
x=-1:.001:2;                                             // defining the range of x.
deff('[y]=f(x)','y=cos(x)-x*%e^x');                  //defining the cunction.
deff('[y]=fp(x)','y=-sin(x)-x*%e^x-%e^x');
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = cos(x)-x*%e^x')

// from the above plot we can infre that the function has root between   
// the interval (0,1)


// a=0;b=1,



            // solution by newton raphson's method with a permissible error of 10^-8.


// we call a user-defined function 'newton' so as to find the approximate 
// root of the equation within the defined permissible error limit.  

newton(1,f,fp)





// hence the approximate root witin the permissible error of 10^-8 is 0.5177574. 