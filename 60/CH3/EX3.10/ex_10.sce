//example(3.10)

 c=[-3 1 0 1]
 p3=poly(c,'x','coeff')
 roots(p3)
 //here
  xset('window',0);                                   
x=-2:.01:2.5;                                             // defining the range of x.
deff('[y]=f(x)','y=x^3+x-3');                  //defining the cunction 
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y =x^3+x-3')