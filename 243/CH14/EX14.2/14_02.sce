//Example No. 14_02
//Finite Difference Method
//Pg No. 470
clear ; close ; clc ;

deff('D2Y = d2y(x)','D2Y = exp(x^2)') 
x_1 = 0;
y_0 = 0 ;
y_1  = 0 ;
h = 0.25
xf = 1
n = (xf-x_1)/h
for i = 1:n-1
    A(i,:) = [1  -2   1]
    B(i,1) = exp((x_1 + i*h)^2)*h^2
end
A(1,1) = 0 ; //since we know y0 and y4
A(3,3) = 0 ;
A(1,1:3) = [ A(1,2:3) 0] //rearranging terms
A(3,1:3) = [ 0 A(3,1:2)]  
C = A\B //Solution of Equations
mprintf(' \n The solution is \n y1 = y(0.25) = %f \n y2 = y(0.5) = %f \n y3 = y(0.75) = %f \n ',C(1),C(2),C(3)) 
