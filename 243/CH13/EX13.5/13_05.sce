//Example No. 13_05
//Error estimation in Euler's Method
//Pg No. 422
clear ; close ; clc ;

deff('DY = dy(x)','DY = 3*x^2 + 1')
deff('D2Y = d2y(x)','D2Y = 6*x')
deff('D3Y = d3y(x)','D3Y = 6')
deff('exacty = exacty(x)','exacty = x^3 + x')
x0 = 1
y(1) = 2
h = 0.5
for i = 2 : 3
    x(i-1) = x0 + (i-1)*h
    y(i) = y(i-1) + h*dy(x0+(i-2)*h)
    mprintf('\n Step %i \n x(%i) = %f\n y(%f) = %f\n',i-1,i-1,x(i-1),x(i-1),y(i))
    Et(i-1) = d2y(x0+(i-2)*h)*h^2/2 +  d3y(x0+(i-2)*h)*h^3/6
    mprintf('\n Et(%i) = %f\n',i-1,Et(i-1))
    truey(i-1) = exacty(x0+(i-1)*h)
    gerr(i-1) = truey(i-1) - y(i)
end

table = [x y(2:3) truey Et gerr]
disp(table,'   x      Est y   true y    Et      Globalerr')