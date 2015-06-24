//example 2.7
//false position method
//page 29
clc;clear;close
deff('y=f(x)','y=x^2.2-69');
a=5,b=6;//f(5) is negative and f(6)is positive
d=0.00001;
 printf('succesive iterations    \ta\t    b\t    f(a)\t    f(b)\t\  x1\n');
for i=1:25
    x1=b*f(a)/(f(a)-f(b))+a*f(b)/(f(b)-f(a));
    if(f(a)*f(x1))>0
        b=x1;
    else
        a=x1;
    end
    if abs(f(x1))<d
        break
    end
    printf('                         \t%f  %f  %f  %f  %f\n',a,b,f(a),f(b),x1);
end
printf('the root of the equation is  %f',x1);

