//Example No. 13_01
//Taylor method
//Pg No. 414
clear ; close ; clc ;

deff('F = f(x,y)','F = x^2 + y^2')
deff('D2Y = d2y(x,y)','D2Y = 2*x + 2*y*f(x,y)');
deff('D3Y = d3y(x,y)','D3Y = 2 + 2*y*d2y(x,y) + 2*f(x,y)^2');
deff('Y = y(x)','Y = 1 + f(0,1)*x + d2y(0,1)*x^2/2 + d3y(0,1)*x^3/6');
disp(y(0.25),'y(0.25) = ')
disp(y(0.5),'y(0.5) = ')