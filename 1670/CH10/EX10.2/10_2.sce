//Example 10.2
//Taylor Method
//Page no. 303
clc;clear;close;

deff('y=f1(x,y)','y=x-y^2')
deff('y=f2(x,y)','y=1-2*x*y+2*y^3')
deff('y=f3(x,y)','y=-2*(y-4*x*y^2+3*y^4+x^2)')
deff('y=f4(x,y)','y=-2*y*f3(x,y)-6*f1(x,y)*f2(x,y)')
h=0.2;y=1;
    x=[0.2,0.4]
    for i=1:2
        if i==1 then
            k=y;
        end
    for j=1:4
    if j==1 then
        k=k+(h^j)*f1((i-1)*h,y)/factorial(j)
    elseif j==2
        k=k+(h^j)*f2((i-1)*h,y)/factorial(j)
    elseif j==3
        k=k+(h^j)*f3((i-1)*h,y)/factorial(j)
    elseif j==4
        k=k+(h^j)*f4((i-1)*h,y)/factorial(j)
    end
end
printf('\ny(%g) = %g\n\n',x(i),k)
y=k
end
