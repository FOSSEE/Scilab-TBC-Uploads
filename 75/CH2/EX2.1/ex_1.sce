    //    EXAMPLE (PG 57)
    //    To find largest root, alpha, of x^6 - x - 1 = 0 
    //    using bisection method
    //    The graph of this function can also be observed here.
    
deff('[y]=f(x)','y=x^6-x-1')
                     //    It is straightforward to show that 1<alpha<2, and 
                     //we will use this as our initial interval [a,b]


xset('window',0);                                   
x=-5:.01:5;                                             // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = x^6-x-1')

// execution of the user defined function so as to use it in program to find the approximate solution.

// we call a user-defined function 'bisection' so as to find the approximate 
// root of the equation with a defined permissible error.  

bisection(1,2,f)