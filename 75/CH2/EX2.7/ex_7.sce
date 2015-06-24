    //    EXAMPLE (PG 77)
    //    x^2-a = 0

    //    The graph for x^2-3 can also be observed here.

deff('[y]=f(x)','y=x*x-3')
funcprot(0)
xset('window',3);                                   
x=-2:.01:10;                                             // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = x^2-3')
    //        CASE 1

//We have f(x) = x^2-a.
//So, we assume g(x) = x^2+x-a and the value of a = 3

deff('[y]=g(x)','y=x^2+x-3')
funcprot(0)
x=2
for n=0:1:3
 g(x);
   x=g(x)
end

//        CASE 2

//We have f(x) = x^2-a.
//So, we assume g(x) = a/x and the value of a = 3

deff('[y]=g(x)','y=3/x')
funcprot(0)
x=2
for n=0:1:3
 g(x);
   x=g(x)
end

//        CASE 3

//We have f(x) = x^2-a.
//So, we assume g(x) = 0.5*(x+(a/x)) and the value of a = 3

deff('[y]=g(x)','y=0.5*(x+(3/x))')
funcprot(0)
x=2
for n=0:1:3
 g(x);
   x=g(x)
end
