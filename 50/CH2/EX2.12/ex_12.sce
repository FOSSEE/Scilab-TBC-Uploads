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


        //sollution by muller method to 5 iterations.
        

muller5(-1,0,1,f)
