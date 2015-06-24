//Example No. 13_06
//Heun's Method
//Pg No. 427
clear ; close ;clc ;

deff('F = f(x,y)','F = 2*y/x ')
deff('exacty = exacty(x)','exacty = 2*x^2')
x(1) = 1 ;
y(1) = 2 ;
h = 0.25 ;
//Euler's Method
disp('EULERS METHOD')
for i = 2:5
    x(i) = x(i-1) + h ;
    y(i) = y(i-1) + h*f(x(i-1),y(i-1));
    mprintf('y(%f) = %f \n ',x(i),y(i))
end
eulery = y
//Heun's Method
disp('HEUNS METHOD')
for i = 2:5
    m1 = f(x(i-1),y(i-1)) ;
    ye(i) = y(i-1) + h*f(x(i-1),y(i-1));
    m2 = f(x(i),ye(i)) ;
    y(i) = y(i-1) + h*(m1 + m2)/2
   mprintf('\nIteration %i \n m1 = %f\n ye(%f) = %f \n m2 = %f \n y(%f) = %f \n',i-1,m1,x(i),ye(i),m2,x(i),y(i)) 
end
truey = exacty(x) ;
table = [x eulery y truey ] ;
disp(table,'   x     Eulers   Heuns      Analytical')