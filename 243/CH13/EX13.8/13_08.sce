//Example No. 13_08
//Classical Runge Kutta Method
//Pg No. 439
clear ; close ; clc ;

deff('F = f(x,y)','F = x^2 + y^2');
h = 0.2
x(1) = 0 ;
y(1) = 0 ;

for i = 1:2
    m1 = f(  x(i)  ,  y(i)  ) ;
    m2 = f(  x(i) + h/2  ,  y(i) + m1*h/2  ) ;
    m3 = f(  x(i) + h/2  ,  y(i) + m2*h/2  ) ;
    m4 = f(  x(i) + h  ,  y(i) + m3*h  ) ;
    x(i+1) = x(i) + h ;
    y(i+1) = y(i) +  (m1 + 2*m2 + 2*m3 + m4)*h/6 ;
    
    mprintf('\nIteration - %i\n m1 = %f\n m2 = %f \n m3 = %f \n m4 = %f \n y(%f) = %f \n',i,m1,m2,m3,m4,x(i+1),y(i+1))
end