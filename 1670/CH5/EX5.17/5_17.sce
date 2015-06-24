//Example 5.17
//Error Propagation
//Page no. 140
clc;close;clear;
printf('   x\t     y\t\tdy\td2y\t   d3y\t        d4y\t  d5y\n')
printf('------------------------------------------------------------------------------------------')
x=[1,1;1.1,1.5191;1.2,2.0736;1.3,2.6611;1.4,3.2816;1.5,3.9375;1.6,4.6363;1.7,5.3771;1.8,6.1776;1.9,7.0471;2,8]
for i=3:7
    for j=1:13-i
        x(j,i)=x(j+1,i-1)-x(j,i-1)
    end
end
disp(x)
for i=1:11
    if abs(x(i,7))<10^-5 then
        continue
    else
        break
    end
end
printf("\n\Therefore the error is in the value corresponding to %g i.e. %g",x(i+5,1),x(i+5,2))