//taylor's method
//example 8.2
//page 304
clc;clear;close;
f=1;//value of function at 0
f1=0;//value of first derivatie at 0
deff('y=f2(x)','y=x*f1+f')
deff('y=f3(x)','y=x*f2(x)+2*f1');
deff('y=f4(x)','y=x*f3(x)+3*f2(x)');
deff('y=f5(x)','y=x*f4(x)+4*f3(x)');
deff('y=f6(x)','y=x*f5(x)+5*f4(x)');
h=0.1;//value at 0.1
k=f;
        for j=1:6
            if j==1  then
                k=k+h*f1;
            elseif j==2 then
                k=k+(h^j)*f2(0)/factorial(j)
            elseif j ==3
                k=k+(h^j)*f3(0)/factorial(j)
            elseif j ==4
                k=k+(h^j)*f4(0)/factorial(j)
            elseif j==5
                k=k+(h^j)*f5(0)/factorial(j)
                else
k=k+(h^j)*f6(0)/factorial (j)
end
end
printf('the value of the function at %.2f is :%0.7f',h,k)
