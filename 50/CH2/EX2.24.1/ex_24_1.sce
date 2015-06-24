                               // The equation x^3-5*x+1==0 has  real roots.
                          // the graph of this function can be observed here.
xset('window',2);                                   
x=-2:.01:4;                                       // defining the range of x.
deff('[y]=f(x)','y=x^3-5*x+1');                  //defining the function.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                   // instruction to plot the graph 
title(' y = x^3-5*x+1')

// from the above plot we can infre that the function has roots between   
// the intervals (0,1),(2,3).
// since we have been asked for the smallest positive root of the equation,
// we are intrested on the interval (0,1)

x0=.5; 

         //solution using linear iteration method for the first two iterations and aitken's process two times for the third iteration.
         
         deff('[y]=g(x)','y=1/5*(x^3+1)');
          deff('[y]=gp(x)','y=1/5*(3*x^2)');
          
          
generaliteration2(x0,g,gp)


// from the above iterations performed we can infer that-
x1=0.225;
x2=0.202278;




aitken(x0,x1,x2,g)          // calling the aitken method for one iteration