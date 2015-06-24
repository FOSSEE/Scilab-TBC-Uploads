                            // The equation x-%e^-x==0 has  real roots.
                          // the graph of this function can be observed here.
xset('window',24);                                   
x=-3:.01:4;                                             // defining the range of x.
deff('[y]=f(x)','y=x-%e^-x');                  //defining the cunction.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = x-%e^-x')

// from the above plot we can infre that the function has root between   
// the interval (0,1)

x0=1;

          //solution using linear iteration method for the first two iterations and aitken's process two times for the third iteration.
          
          
         
         deff('[y]=g(x)','y=%e^-x');
         deff('[y]=gp(x)','y=-%e^-x');
         
        
generaliteration2(x0,g,gp)


// from the above iterations performed we can infer that-
x1=0.367879;
x2=0.692201;




aitken(x0,x1,x2,g)          // calling the aitken method for one iteration