                                   // The equation x^3-7*x^2+16*x-12==0 has  real roots.
                                   // the graph of this function can be observed here.
xset('window',25);                                   
x=0:.001:4;                                             // defining the range of x.
deff('[y]=f(x)','y=x^3-7*x^2+16*x-12');                  //defining the cunction.
deff('[y]=fp(x)','y=3*x^2-14*x+16');
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = x^3-7*x^2+16*x-12')




// given that the equation has double roots at x=2 hence m=2;

m=2;

                  // solution by newton raphson method
                  
                 
newton(1,f,fp)                  // calling the user defined function




                        //solution by modified newton raphsons mathod
                        
                 

modified_newton(1,f,fp)                     