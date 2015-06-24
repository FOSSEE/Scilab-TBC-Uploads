//Example 5.11
//Finite Differences
//Page no. 136
clc;close;clear;
printf('   x\t f(x)\tdf(x)  d2f(x)  d3f(x) d4f(x)\n')
printf('------------------------------------------------------------------------------------------')
x=[0,-5;1,1;2,9;3,25;4,55;5,105]
for i=3:6
    for j=1:8-i
        x(j,i)=x(j+1,i-1)-x(j,i-1)
    end
end
disp(x)
x1=poly(0,"x")
fx=x(1,2)+x1*x(1,3)+(x1^2-x1)*x(1,4)/2+(x1^3-3*x1^2+2*x1)*x(1,5)/6
disp("is the required polynomial",fx)