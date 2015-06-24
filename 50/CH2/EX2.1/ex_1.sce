                                   // The equation 8*x^3-12*x^2-2*x+3==0 has three real roots.
                                   // the graph of this function can be observed here.
xset('window',0);                                   
x=-1:.01:2.5;                                             // defining the range of x.
deff('[y]=f(x)','y=8*x^3-12*x^2-2*x+3');                  //defining the cunction 
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = 8*x^3-12*x^2-2*x+3')

// from the above plot we can infre that the function has roots between   
// the intervals (-1,0),(0,1),(1,2).
