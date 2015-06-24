//example(3.8)



  //a,b & e are the modulus coeff of x^0,x^1,x^4
 c=[-1 1 -1 -1 1]
a=1;
b=1;
e=1;
 n=4
 p4=poly(c,'x','coeff')
  p=n*a/b
  q=(a/e)^(1/n)
 roots(p4)
      //from here we found that only 2 real roots,other two are complex roots
 xset('window',0);                                   
x=-2:0.1:3;                                             // defining the range of x.
deff('[y]=f(x)','y=x^4-x^3-x^2+x-1');                  //defining the function 
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y =x^4-x^3-x^2+x-1')
 

 
 