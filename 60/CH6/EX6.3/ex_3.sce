//Example 6.3

deff('[y]=f(x)','y=exp(x)')
xset('window',0);
x=-1:.01:1;                // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                // instruction to plot the graph



//    possible approximation
//        y = q1(x)

//    Let e(x) = exp(x) - [a0+a1*x]
//    q1(x) & exp(x) must be equal at two points in [-1,1], say at x1 & x2
//    sigma1 = max(abs(e(x)))
//    e(x1) = e(x2) = 0.
//    By another argument based on shifting the graph of y = q1(x),
//    we conclude that the maximum error sigma1 is attained at exactly 3 points.
//    e(-1) = sigma1
//    e(1) = sigma1
//    e(x3) = -sigma1
//    x1 < x3 < x2
//    Since e(x) has a relative minimum at x3, we have e'(x) = 0
//    Combining these 4 equations, we have..
//    exp(-1) - [a0-a1] = sigma1 ------------------(i)
//    exp(1) - [a0+a1] = p1 -----------------------(ii)
//    exp(x3) - [a0+a1*x3] = -sigma1 --------------(iii)
//    exp(x3) - a1 = 0 ----------------------------(iv)

//    These have the solution

a1 = (exp(1) - exp(-1))/2
x3 = log(a1)
sigma1 = 0.5*exp(-1) + x3*(exp(1) - exp(-1))/4
a0 = sigma1 + (1-x3)*a1

x = poly(0,"x");
//    Thus,
q1 = a0 + a1*x

deff('[y1]=f(x)','y1=1.2643+1.1752*x')

xset('window',0);
x=-1:.01:1;                // defining the range of x.
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                // instruction to plot the graph




