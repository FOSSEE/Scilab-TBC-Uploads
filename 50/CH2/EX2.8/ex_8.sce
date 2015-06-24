                                   // The equation x^3-17==0 has three real roots.
                                   // the graph of this function can be observed here.
xset('window',7);                                   
x=-5:.001:5;                                             // defining the range of x.
deff('[y]=f(x)','y=x^3-17');                  //defining the cunction.
deff('[y]=fp(x)','y=3*x^2');
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph 
title(' y = x^3-17')

// from the above plot we can infre that the function has root between   
// the interval (2,3).



           //solution by newton raphson's method
           
           

 // since in example no.2.8 we have been asked to perform 4 iterations ,we define a fuction newton4'' which does newton raphson's method of finding approximate root upto 4 iterations,
 
  
 
 newton4(2,f,fp)                //calling the pre-defined function 'newton4'.
       