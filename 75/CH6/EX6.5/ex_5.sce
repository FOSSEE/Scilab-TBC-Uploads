        //    PG (344)

//    dy/dx = y

// y'=f(x,t)
deff('[z]=f(x,y)','z=y');

// execute the function euler1 , so as to call it to evaluate the value of y,


[y,x] = Euler1(0.40,1,2.00,0.2,f)     // h=0.2;

[y,x] = Euler1(0.40,1,2.00,0.1,f)     // h=0.1;

[y,x] = Euler1(0.40,1,2.00,0.05,f)     // h=0.05;

//    True solution is
Y = exp(x)


//    dy/dx = (1/(1+x^2))-(2*y^2)

// y'=f(x,t)
deff('[z]=f(x,y)','z=(1/(1+x^2))-(2*y^2)');

// execute the function euler1 , so as to call it to evaluate the value of y,



[y,x] = Euler1(0,0,2,0.2,f)     // h=0.2;

[y,x] = Euler1(0,0,2,0.1,f)     // h=0.1;

[y,x] = Euler1(0,0,2,0.05,f)     // h=0.05;

//    True solution is
Y = x/(1+x^2)