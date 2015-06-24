                                   // The equation 27*x^5+27*x^4+36*x^3+28*x^2+9*x+1==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',26);                                   
x=-2:.001:3;                                             // defining the range of x.
deff('[y]=f(x)','y=27*x^5+27*x^4+36*x^3+28*x^2+9*x+1');                  //defining the cunction.
deff('[y]=fp(x)','y=27*5*x^4+27*4*x^3+36*3*x^2+28*2*x+9');
deff('[y]=fpp(x)','y=27*5*4*x^3+27*4*3*x^2+36*3*2*x+28*2');
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = 27*x^5+27*x^4+36*x^3+28*x^2+9*x+1')




                  // solution by newton raphson method as per the equation no.  2.14
                  
                  
newton(-1,f,fp)                  // calling the user defined function


newton4(-1,f,fp)


                        // solution by newton raphson method as per the equation no.  2.63

newton63(-1,f,fp,fpp)                  // calling the user defined function
                           // solution by the secant method defined to satisfy the equation no.2.64.
                           
    
secant64(0,-1,f,fp)






                           // solution by the secant method defined to satisfy the equation no.2.65.
                           
    
secant65(0,-.5,f)
