//Example 5.18
//Error Propagation
//Page no. 141
clc;close;clear;
printf('   x\t     y\t\tdy\td2y\t   d3y\t        d4y\t  d5y\n')
printf('------------------------------------------------------------------------------------------')
x=[0,2;1,5;2,8;3,17;4,38;5,75;6,140;7,233;8,362;9,533;10,752]
for i=3:6
    for j=1:13-i
        x(j,i)=x(j+1,i-1)-x(j,i-1)
    end
end
disp(x)
for i=1:11
    if abs(x(i,6))<10^-5 then
        continue
    else
        break
    end
end
printf("\n\Therefore the error is in the value corresponding to %g i.e. %g",x(i+4,1),x(i+4,2))