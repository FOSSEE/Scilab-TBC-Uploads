//Example No. 13_3
//Picard's Method
//Pg No. 417
clear ; close ; clc ;
funcprot(0)
//y'(x) = x^2 + y^2,y(0) = 0
//y(1) = y0 + integral(x^2 + y0^2,x0,x)
//y(1) = x^3/3
//y(2) = 0 + integral(xY2 + y1^2,x0,x)
//     = integral(x^2 + x^6/9,0,x) = x^3/3 + x^7/63
//therefore y(x) = x^3 /3 + x^7/63
deff('Y = y(x)','Y = x^3/3 + x^7/63 ')
disp(y(1),'y(1) = ',y(0.2),'y(0.2) = ',y(0.1),'y(0.1) = ','for dy(x) = x^2 + y^2 the results are ')

//y'(x) = x*e^y, y(0) = 0
//y0 = 0 , x0 = 0
//Y(1) = 0 + integral(x*e^0,0,x) = x^2/2
//y(2) = 0 + integral( x*e^( x^2/2 ) ,0,x) = e^(x^2/2)-1
//therefore y(x) = e^(x^2/2) - 1
deff('Y = y(x)','Y = exp(x^2/2) - 1 ')
disp(y(1),'y(1) = ',y(0.2),'y(0.2) = ',y(0.1),'y(0.1) = ',,'for dy(x) = x*e^y the results are ')