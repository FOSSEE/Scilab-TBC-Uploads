function [I]=Romberg(a,b,f,h)

//    This function calculates the numerical integral of f(x) between
//    x = a and x = b, with intervals h.  Intermediate results are obtained
//    by using SCILAB's own inttrap function

x=(a:h:b)
x1=x(1,1)
x2=x(1,2)
x3=x(1,3)
x4=x(1,4)
y1=f(x1)
y2=f(x2)
y3=f(x3)
y4=f(x4)
y=[y1 y2 y3 y4]
I1 = inttrap(x,y)
x=(a:h/2:b)
x1=x(1,1)
x2=x(1,2)
x3=x(1,3)
x4=x(1,4)
x5=x(1,5)
x6=x(1,6)
x7=x(1,7)
y1=f(x1)
y2=f(x2)
y3=f(x3)
y4=f(x4)
y5=f(x5)
y6=f(x6)
y7=f(x7)
y=[y1 y2 y3 y4 y5 y6 y7]
I2 = inttrap(x,y)
I = I2 + (1.0/3.0)*(I2-I1)

endfunction
//end function Romberg
