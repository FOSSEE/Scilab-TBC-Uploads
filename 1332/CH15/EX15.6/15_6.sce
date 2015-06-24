//Example 15.6
//Taylor Method
//Page no. 510
clc;clear;close;

deff('y=f1(x,y)','y=x^2+y^2')
deff('y=f2(x,y)','y=2*x+2*y*f1(x,y)')
deff('y=f3(x,y)','y=2+2*f1(x,y)^2+2*y*f2(x,y)')
deff('y=f4(x,y)','y=6*f1(x,y)*f2(x,y)+2*y*f3(x,y)')
h=0.2;
for l=1:2
    a=0;y=0;x=0;
    printf('\n---------------\nh = %g\n---------------\n',h)
    for i=1:4
    x=a+(i-1)*h
    k=0;
    for j=1:4
    if j==1 then
        k=k+(h^j)*f1(x,y)/factorial(j)
    elseif j==2
        k=k+(h^j)*f2(x,y)/factorial(j)
    elseif j==3
        k=k+(h^j)*f3(x,y)/factorial(j)
    else
        k=k+(h^j)*f4(x,y)/factorial(j)
    end
end
y=y+k;
printf('\nx = %g\n\ny(%g) = %g\n\n',x,x+0.2,y)
end
h=h+0.2;
end
