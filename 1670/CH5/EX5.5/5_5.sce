//Example 5.5
//Finite Differences
//Page no. 132
clc;close;clear;
printf('   x\t f(x)\tdf(x)\t    d2f(x)\td3f(x)\t        d4f(x)\n')
printf('------------------------------------------------------------------------------------------')
x=[0,1;1,3;2,9;3,poly(0,"y3");4,81]
for i=3:6
    for j=1:7-i
        x(j,i)=x(j+1,i-1)-x(j,i-1)
    end
end
disp(x)
disp(roots(x(1,6)),"y3 = ")