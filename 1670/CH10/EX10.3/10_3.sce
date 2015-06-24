//Example 10.3
//Taylor Method
//Page no. 304
clc;clear;close;

deff('y=f1(x,y)','y=1')
deff('y=f2(x,y)','y=x*y')
deff('y=f3(x,y)','y=x*f1(x,y)+y')
deff('y=f4(x,y)','y=x*f2(x,y)+2*f1(x,y)')
deff('y=f5(x,y)','y=x*f3(x,y)+3*f2(x,y)')
h=0.5;y=0;
    x=[0.5,1]
    for i=1:2
        if i==1 then
            k=y;
        end
    for j=1:5
    if j==1 then
        k=k+(h^j)*f1((i-1)*h,y)/factorial(j)
    elseif j==2
        k=k+(h^j)*f2((i-1)*h,y)/factorial(j)
    elseif j==3
        k=k+(h^j)*f3((i-1)*h,y)/factorial(j)
    elseif j==4
        k=k+(h^j)*f4((i-1)*h,y)/factorial(j)
    elseif j==5
        k=k+(h^j)*f5((i-1)*h,y)/factorial(j)
    end
end
printf('\ny(%g) = %g\n\n',x(i),k)
y=k
end
