//Example No. 13_11
//Adams-Bashforth-Moulton Method
//Pg NO. 446
clear;close;clc;

deff('F = f(x,y)','F = 2*y/x')
x0 = 1 ;
y0 = 2 ;
h = 0.25 ;
x1 = x0 + h 
y1 = 3.13 ;
x2 = x1 + h 
y2 = 4.5 ;
x3 = x2 + h
y3 = 6.13 ;
//Adams Predictor formula
yp4 = y3 + h*(55*f(x3,y3) - 59*f(x2,y2) + 37*f(x1,y1) - 9*f(x0,y0))/24
x4 = x3 + h 
fp4 = f(x4,yp4) 
disp(fp4,'fp4 = ',yp4,'yp4 = ','Adams Predictor formula')
//Adams Corrector formula
yc4 = y3 + h*( f(x1,y1) - 5*f(x2,y2) + 19*f(x3,y3) + 9*fp4 )/24 
f4 = f(x4,yc4)
disp(f4,'f4 = ',yc4,'yc4 = ','Adams Corrector formula')

yc4 = y3 + h*( f(x1,y1) - 5*f(x2,y2) + 19*f(x3,y3) + 9*f4 )/24 
disp(yc4 ,'refined-yc4 = ') 