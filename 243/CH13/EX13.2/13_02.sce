//Example No. 13_02
//Recursive Taylor Method
//Pg No. 415
clear ; close ; clc ;

deff('F = f(x,y)','F = x^2 + y^2')
deff('D2Y = d2y(x,y)','D2Y = 2*x + 2*y*f(x,y)');
deff('D3Y = d3y(x,y)','D3Y = 2 + 2*y*d2y(x,y) + 2*f(x,y)^2');
deff('D4Y = d4y(x,y)','D4Y = 6*f(x,y)*d2y(x,y) + 2*y*d3y(x,y) ');
h = 0.2 ;
deff('Y = y(x,y)','Y = y + f(x,y)*h + d2y(x,y)*h^2/2 + d3y(x,y)*h^3/6 + d4y(x,y)*h^4/factorial(4)');
x0 = 0;
y0 = 0 ;
for i = 1:2
    y_(i) = y(x0,y0)
   printf(' Iteration-%i\n\n dy(0) = %f\n d2y(0) = %f\n d3y(0) = %f\n d4y(0) = %f\n ',i,f(x0,y0),d2y(x0,y0),d3y(x0,y0),d4y(x0,y0)) 
    x0 = x0 + i*h
    y0 = y_(i)
   printf('y(0) = %f\n\n',y_(i))
end
