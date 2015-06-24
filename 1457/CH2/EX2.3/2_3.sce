clc
//Initialization of variables
W=500 //lb
width=2 //ft
len=4 //ft
CGx=1.2 //ft
CGy=0.9 //ft
theta=30 //degrees
gam=62.4 //lb/ft^3
//Calculations
Fv=width*len //multiply by gam*x
F=width/(2*cosd(theta)) //multiply by gam*x*x
//function[y] =yp(x)
//    y=x/(2*cosd(theta)) + width*(x/cosd(theta))/(12*(cosd(theta))^4)
//endfunction
//function[M]=func(x)
//    M=F*gam*x^2 *0.770*x/2 +W*CGx - Fv*gam*x*width
//endfunction
x= poly(0,'x');
vector=roots(F*gam*x^2 *0.770*x/2 +W*CGx - Fv*gam*x*width)
printf('The gate will remain closed between %.2f ft and %.2f ft',vector(3),vector(2))
