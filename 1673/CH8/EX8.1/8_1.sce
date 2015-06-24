//example 8.1
//taylor's method
//page 304
clc;clear;close;
f=1;//value of function at 0
deff('z=f1(x)','z=x-f^2');
deff('z=f2(x)','z=1-2*f*f1(x)');
deff('z=f3(x)','z=-2*f*f2(x)-2*f2(x)^2');
deff('z=f4(x)','z=-2*f*f3(x)-6*f1(x)*f2(x)');
deff('z=f5(x)','z=-2*f*f4(x)-8*f1(x)*f3(x)-6*f2(x)^2');
h=0.1;//value at 0.1
k=f;
        for j=1:5
            if j==1  then
                k=k+h*f1(0);
            elseif j==2 then
                k=k+(h^j)*f2(0)/factorial(j)
            elseif j ==3
                k=k+(h^j)*f3(0)/factorial(j)
            elseif j ==4
                k=k+(h^j)*f4(0)/factorial(j)
            elseif j==5
                k=k+(h^j)*f5(0)/factorial(j)
                
end
end
printf('the value of the function at %.2f is :%0.4f',h,k)
