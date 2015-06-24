//Example 10.8
//Steepest Descent
//Page no. 328
clc;clear;close;

deff('y=f(x1,x2)','y=(x1-2)^4+3*(x2+3)^2')
x=[1;-2];
printf('n\t     x1\t\t     x2\t\t   F(x1,x2)\n-----------------------------------------------------\n')
for i=1:11
    Fx=[f(x(1),x(2))];
    J=[4*(x(1)-2)^3,6*(x(2)+3)];
    u=(Fx*J*J'*Fx)/(J*J'*Fx*J*J'*Fx)
    printf(' %i\t%.10f\t%.10f\t%.10f\n',i-1,x(1),x(2),Fx)
    x=x-u*J'*Fx 
end
printf('\n\nThis shows that the solution tends to x1 = %i   and   x2 = %i',ceil(x(1)),floor(x(2)))