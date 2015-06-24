//Example 10.1
//Taylor Method
//Page no. 302
clc;clear;close;

deff('y=f1(x,y)','y=y-2*x/y')
deff('y=f2(x,y)','y=(2*y*f1(x,y)-2-f1(x,y)^2)/y')
deff('y=f3(x,y)','y=(2*y*f2(x,y)-3*f1(x,y)*f2(x,y)+2*f1(x,y)^2)/y')
h=0.1;y=1;
    x=[0.1;-0.1]
    for i=1:2
    k=y;
    for j=1:3
    if j==1 then
        k=k+(-1)^((i-1)*j)*(h^j)*f1(0,y)/factorial(j)
    elseif j==2
        k=k+(-1)^((i-1)*j)*(h^j)*f2(0,y)/factorial(j)
    elseif j==3
        k=k+(-1)^((i-1)*j)*(h^j)*f3(0,y)/factorial(j)
    end
end
printf('\ny(%g) = %g\n\n',x(i),k)
end
