//Example No. 13_07
//Polygon Method
//Pg NO. 433
clear ; close ; clc ;
deff('F = f(x,y)','F = 2*y/x ')
x(1) = 1 ;
y(1) = 2 ;
h = 0.25 ;
for i = 2:3
    x(i) = x(i-1) + h ; 
    y(i) = y(i-1) + h*f(  x(i-1)+ h/2  ,  y(i-1) + h*f( x(i-1)  ,  y(i-1) )/2  );
    mprintf('y(%f) = %f \n ',x(i),y(i))
end