//Example No. 6_14
//Solving System of Non-linear equations using Newton Raphson Method
//Pg No. 172
clear ; close ; clc ;

printf('x^2 + x*y = 6 \n x^2 - y^2 = 3 \n');
deff('f = F(x,y)','f = x^2 + x*y - 6' );
deff('g = G(x,y)','g = x^2 - y^2 -3');
deff('f1 = dFx(x,y)','f1 = 2*x + y');
deff('f2 = dFy(x,y)','f2 = y');
deff('g1 = dGx(x,y)','g1 = 2*x ');
deff('g2 = dGy(x,y)','g2 = -2*y');
x(1) = 1 ;
y(1) = 1 ;

for i = 2:3
    Fval = feval(x(i-1),y(i-1),F);
    Gval = feval(x(i-1),y(i-1),G);
    f1 = feval(x(i-1),y(i-1),dFx);
    f2 = feval(x(i-1),y(i-1),dFy);
    g1 = feval(x(i-1),y(i-1),dGx);
    g2 = feval(x(i-1),y(i-1),dGy);
    D =  f1*g2 - f2*g1 ;
    
    x(i) = x(i-1) - (Fval*g2 - Gval*f2)/D ;
    y(i) = y(i-1) - (Gval*f1 - Fval*g1)/D ;
    printf('\n x%i = %f \n y%i = %f \n',i-1,x(i),i-1,y(i))    
    
end