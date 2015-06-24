//Example No. 13_10
//Milne-Simpson Predictor-Corrector method
//Pg NO. 446
clear;close;clc;

deff('F = f(x,y)','F = 2*y/x')
x0 = 1 ;
y0 = 2 ;
h = 0.25 ;
//Assuming y1 ,y2 and y3(required for milne-simpson formula) are estimated using Fourth- order Runge kutta method
x1 = x0 + h 
y1 = 3.13 ;
x2 = x1 + h 
y2 = 4.5 ;
x3 = x2 + h
y3 = 6.13 ;
//Milne Predictor formula
yp4 = y0 + 4*h*(2*f(x1,y1) - f(x2,y2) + 2*f(x3,y3))/3
x4 = x3 + h 
fp4 = f(x4,yp4) ;
disp(fp4,'fp4 = ',yp4,'yp4 = ')
//Simpson Corrector formula
yc4 = y2 + h*( f(x2,y2) + 4*f(x3,y3) + fp4)/3 
f4 = f(x4,yc4)
disp(f4,'f4 = ',yc4,'yc4 = ')

yc4 = y2 + h*( f(x2,y2) + 4*f(x3,y3) + f4)/3 
disp(yc4 ,'yc4 = ') 
disp('Note- the exact solution is y(2) = 8')