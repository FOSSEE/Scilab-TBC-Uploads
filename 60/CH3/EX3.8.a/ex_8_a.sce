//example(pg no.111)


//a,b & f are the modulus coeff of x^0,x^1,x^5
 c=[-6.8 10.8 -10.8 7.4 -3.7 1]
 a=6.8;
 b=10.8;
 f=1;
  n=5
 p5=poly(c,'x','coeff')
  p=n*a/b
  q=a/f^(1/n)
 roots(p4)
 
 xset('window',0);                                   
x=-2:.01:2.5;                                             // defining the range of x.
deff('[y]=f(x)','y=x^5-3.7*x^4+7.4*x^3-10.8*x^2+10.8*x-6.8');                  //defining the cunction 
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y = 8*x^3-12*x^2-2*x+3')