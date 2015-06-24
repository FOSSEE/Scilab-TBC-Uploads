     
                       
                                   // The equation 1/x-7==0 has a real root.
                                   // the graph of this function can be observed here.
xset('window',13);                                   
x=0.001:.001:.25;                                             // defining the range of x.
deff('[y]=f(x)','y=1/x-7');                  //defining the function.
deff('[y]=fp(x)','y=-1/x^2');
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y =1/x-7')

// from the above plot we can infre that the function has roots between   
// the interval (0,2/7)


           //solution by chebyshev method
           
           
 chebyshev(0.1,f,fp)                //calling the pre-defined function 'chebyshev' to find the approximate root in the range of (0,2/7).
 
 

 