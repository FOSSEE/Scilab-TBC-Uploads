//example(3.17)

 c=[51200 0 -39712 0 7392 0 -170 0 1 ]
 p8=poly(c,'x','coeff')
roots(p8)

 xset('window',0);                                   
x=-11:01:11;                                             // defining the range of x.
deff('[y]=f(x)','y=x^8-170*x^6+7392*x^4-39712*x^2+51200');                  //defining the cunction 
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y =x^8-170*x^6+7392*x^4-39712*x^2+51200')
