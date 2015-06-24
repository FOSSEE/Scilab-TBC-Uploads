        //    PG (21)

deff('[y]=f(x)','y = x^3-3*x^2+3*x-1')
xset('window',0);                                   
x=-0:.01:2;                                             // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = x^3-3*x^2+3*x-1')
