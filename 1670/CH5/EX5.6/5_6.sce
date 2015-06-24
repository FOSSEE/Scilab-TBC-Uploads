//Example 5.6
//Finite Differences
//Page no. 132
clc;close;clear;
printf('   x\t f(x)\t  df(x)\t   d2f(x)    d3f(x)   d4f(x)\n')
printf('------------------------------------------------------------------------------------------')
x=[0,3;1,12;2,81;3,2000;4,100]
for i=3:6
    for j=1:7-i
        x(j,i)=x(j+1,i-1)-x(j,i-1)
    end
end
disp(x)
disp(x(1,6),"d4 y(0) = ")