//example 2.8
//false position method
//page 29
clc;clear;close
deff('y=f(x)','y=2*x-log10(x)-7');
a=3,b=4;//f(3) is negative and f(4)is positive
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
printf('the root of the equation is  %0.4g',x1);

