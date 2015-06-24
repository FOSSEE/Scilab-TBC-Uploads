//Example No. 14_01
//Shooting Method
//Pg No. 467
clear ; close ; clc ;

function [B,y] = heun(f,x0,y0,z0,h,xf)
    x(1) = x0 ;
    y(1) = y0 ;
    z(1) = z0 ;
    n = (xf - x0)/h
    for i = 1:n
        m1(1) = z(i) ;
        m1(2) = f(x(i),y(i))
        m2(1) = z(i) + h*m1(2)
        m2(2) = f(x(i)+h,y(i)+h*m1(1))
        m(1) = (m1(1) + m2(1))/2 
        m(2) = ( m1(2) + m2(2) )/2
        x(i+1) = x(i) + h
        y(i+1) = y(i) + h*m(1)
        z(i+1) = z(i) + h*m(2)
    end
    B = y(n+1)         
endfunction

deff('F = f(x,y)','F = 6*x')
x0 = 1 ;
y0 = 2 ;
h = 0.5 ;
z0 = 2
M1 = z0 
xf = 2
B = 9
[B1,y] = heun(f,x0,y0,z0,h,xf)
disp(B1,'B1 = ')
if B1 ~= B then
    disp('Since B1 is less than B , let z(1) = y(1) = 4*(M2)')
    z0 = 4
    M2 = z0
    [B2,y] = heun(f,x0,y0,z0,h,xf)
    disp(B2,'B2 = ')
    if B2 ~= B then
        disp('Since B2 is larger than B ,let us have third estimate of z(1) = M3 ')
        M3 = M2 - (B2 - B)*(M2 - M1)/(B2 - B1)
        z0 = M3 
        [B3,y] = heun(f,x0,y0,z0,h,xf)
        disp(y,'The solution is ',B3,'B3 = ')
    end
end