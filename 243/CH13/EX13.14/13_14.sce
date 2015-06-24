//Example No. 13_14
//Higher Order Differential Equations
//Pg No. 457
clear ; close ; clc ;

x0 = 0
y10 = 0
y20 = 1
h = 0.2
m1(1) = y20 ;
m1(2) = 6*x0 + 3*y10 - 2*y20
m2(1) = y20 + h*m1(2)
m2(2) = 6*(x0+h) + 3*(y10 + h*m1(1)) - 2*(y20 + h*m1(2)) 
m(1) = (m1(1) + m2(1))/2 
m(2) = (m1(2) + m2(2))/2

y1_0_2 = y10 + h*m(1)
y2_0_2 = y20 + h*m(2)

mprintf('m1(1) = %f\n m1(2) = %f\n m2(1) = %f\n m2(2) = %f\n m(1) = %f\n m(2) = %f\n y1(0.1) = %f\n y2(0.1) = %f\n',m1(1),m1(2),m2(1),m2(2),m(1),m(2),y1_0_2,y2_0_2) 