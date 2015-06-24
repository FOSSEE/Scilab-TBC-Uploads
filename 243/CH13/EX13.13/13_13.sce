//Example No. 13_13
//System of differetial Equations
//Pg No. 455
clear ; close ; clc ;

deff('F1 = f1(x,y1,y2)','F1 = x + y1 + y2 ')
deff('F2 = f2(x,y1,y2)','F2 = 1 + y1 + y2 ')

x0 = 0 ;
y10 = 1 ;
y20 = -1 ;
h = 0.1 ;
m1(1) = f1( x0 , y10 , y20 )
m1(2) = f2( x0 , y10 , y20 )
m2(1) = f1( x0+h , y10 + h*m1(1) , y20 + h*m1(2) )
m2(2) = f2( x0+h , y10 + h*m1(1) , y20 + h*m1(2) )
m(1) = (m1(1) + m2(1))/2 
m(2) = (m1(2) + m2(2))/2

y1_0_1 = y10 + h*m(1)
y2_0_1 = y20 + h*m(2)

mprintf('m1(1) = %f\n m1(2) = %f\n m2(1) = %f\n m2(2) = %f\n m(1) = %f\n m(2) = %f\n y1(0.1) = %f\n y2(0.1) = %f\n',m1(1),m1(2),m2(1),m2(2),m(1),m(2),y1_0_1,y2_0_1) 