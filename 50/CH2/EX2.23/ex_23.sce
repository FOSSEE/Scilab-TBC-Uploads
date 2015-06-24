                                   // The equation 3*x^3+4*x^2+4*x+1==0 has three real roots.
                                   // the graph of this function can be observed here.
xset('window',22);                                   
x=-1.5:.001:1.5;                                             // defining the range of x.
deff('[y]=f(x)','y=3*x^3+4*x^2+4*x+1');                  //defining the cunction 
y=feval(x,f);
 
a=gca(); 
 
a.y_location = "origin";
 
a.x_location = "origin"; 
plot(x,y)                                                  // instruction to plot the graph

title(' y =3*x^3+4*x^2+4*x+1')

// from the above plot we can infre that the function has root between   
// the interval (-1,0),

x0=-.5;                 // initial approximation 


// let the iterative function g(x) be x+A*(3*x^3+4*x^2+4*x+1) =g(x);

// gp(x)=(1+A*(9*x^2+8*x+4) )
// we need to choose a value for A , which makes abs(gp(x0))<1

// hence abs(gp(x0))=abs(1+9*A/4)

A=-1:.1:1;

abs(1+9*A/4)            // tryin to check the values of abs(gp(x0)) for different values of A.


// from the above values of 'A' and the values of 'abs(gp(x0))',
// we can infer that for the vales of 'A 'in the range (-.8,0) g(x ) will be giving a converging solution ,

// hence deliberatele we choose a to be -0.5,

A=-0.5;

deff('[y]=g(x)','y= x-0.5*(3*x^3+4*x^2+4*x+1)');
deff('[y]=gp(x)','y= 1-0.5*(9*x^2+8*x+4)');      // hence defining g(x) and gp(x),
generaliteration(x0,g,gp)




