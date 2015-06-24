//Example 15.12
//Modified Midpoint Method
//Page no. 519
clc;clear;close;
deff('y=f(x,y)','y=y+x')
y=1;
h=0.2;
Z(1)=y;
Z(2)=Z(1)+h*f(0,Z(1))
printf('Z(%i) = %g',1,Z(2))
for i=2:5
    x=(i-1)*h;
    Y(i-1)=(Z(i)+Z(i-1)+h*f(x,Z(i)))/2
    Z(i+1)=Z(i-1)+2*h*f(x,Z(i))
    printf('\n Y(%i) = %g\n\n\n Z(%i) = %g',i-1,Y(i-1),i,Z(i+1))
end
printf('\n\n\n y4 = %g',(4*Y(4)-Y(2))/3)