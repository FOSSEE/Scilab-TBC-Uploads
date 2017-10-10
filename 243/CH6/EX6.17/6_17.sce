//Example No. 6_17
//Solving Leonard's equation using MULLER'S Method
//Pg No. 197
clear ; close ; clc ;

deff('y = f(x)','y = x^3 + 2*x^2 + 10*x - 20') ;
x1 = 0 ;
x2 = 1 ;
x3 = 2 ;
for i = 1:10
    f1 = feval(x1,f) ;
    f2 = feval(x2,f) ;
    f3 = feval(x3,f) ;
    h1 = x1-x3 ;
    h2 = x2-x3 ;
    d1 = f1 - f3 ;
    d2 = f2 - f3 ;
    D = h1*h2*(h1-h2);
    a0 = f3 ;
    a1 = (d2*h1^2 - d1*h2^2)/D ;
    a2 = (d1*h2 - d2*h1)/D ;
    if abs(-2*a0/( a1 + sqrt( a1^2 - 4*a0*a2 ) )) < abs( -2*a0/( a1 - sqrt( a1^2 - 4*a0*a2 ) ))
        h4 = -2*a0/(a1 + sqrt(a1^2 - 4*a0*a2));
    else
        h4 = -2*a0/(a1 - sqrt(a1^2 - 4*a0*a2))
    end
    x4 = x3 + h4 ;
    printf('\n x1 = %f\n x2 = %f\n x3 = %f\n f1 = %f\n f2 = %f\n f3 = %f\n h1 = %f\n h2 = %f\n d1 = %f\n d2 = %f\n a0 = %f\n a1 = %f\n a2 = %f\n h4 = %f\n x4 = %f\n ',x1,x2,x3,f1,f2,f3,h1,h2,d1,d2,a0,a1,a2,h4,x4) ;
    relerr = abs((x4-x3)/x4);
    if relerr <= 0.00001 
        printf('root of the polynomial is x4 = %f',x4);
        break
    end
    x1 = x2 ;
    x2 = x3 ;
    x3 = x4 ;
  
    
end