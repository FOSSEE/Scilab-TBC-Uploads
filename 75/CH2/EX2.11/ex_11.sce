    //    EXAMPLE (PG 87)

        //    f(x) = (x-1.1)^3 * (x-2.1)

c = [2.7951 -8.954 10.56 -5.4 1]
p4=poly(c,'x','coeff')
roots(p4)
deff('[y]=f(x)','y=(x-1.1)^3*(x-2.1)')
xset('window',0);                                   
x=0:.01:3;                                             // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = (x-1.1)^3*(x-2.1)')