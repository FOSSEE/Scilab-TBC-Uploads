//Example 10.21
//Adams formula
//Page no. 335
clc;clear;close;
h=0.1;
deff('y=f(x,y)','y=x-y^2')
y(1)=1;
for i=1:5
    x(i)=(i-1)*h
    K(1)=h*f(x(i),y(i));
K(2)=h*f(x(i)+h/2,y(i)+K(1)/2);
K(3)=h*f(x(i)+h/2,y(i)+K(2)/2);
K(4)=h*f(x(i)+h,y(i)+K(3));
y(i+1)=y(i)+(K(1)+2*K(2)+2*K(3)+K(4))/6
printf('\ny(%g) = %.13f\n\n',x(i)+h,y(i+1))
end
i=5;
//adams basforth formula
y(i)=y(i-1)+h*(55*f(x(i-1),y(i-1))-59*(f(x(i-2),y(i-2)))+37*f(x(i-3),y(i-3))-9*f(x(i-4),y(i-4)))/24
disp(y(i),"By Adams Basforth Formula : ")
//adams moulton formula
y(i)=y(i-1)+h*(9*f(x(i),y(i))+19*f(x(i-1),y(i-1))-5*(f(x(i-2),y(i-2)))+f(x(i-3),y(i-3)))/24
disp(y(i),"By Adams Moulton Formula : ")