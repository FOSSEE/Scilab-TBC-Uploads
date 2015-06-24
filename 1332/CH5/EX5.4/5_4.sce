//Example 5.4
//Ridders Method
//Page no. 153
clc;clear;close;
deff('y=f(x)','y=x^3-3*x-5')
x1=2;x2=3;e=0.00001
printf('n\tx1\t\tf(x1)\t\tx2\t\tf(x2)\t\tx3\t\tf(x3)\t   sign\t  x4')
printf('\n----------------------------------------------------------------------------------------------------------\n')
for i=0:8
    x3=(x1+x2)/2
    a=f(x1)-f(x2);
    s=a*abs(1/a)
    x4=x3+(x3-x2)*(s*f(x3))/sqrt(f(x3)-f(x1)*f(x2))
    printf(' %i\t%f\t%f\t%f\t%f\t%f\t%f    %i\t%f\n',i,x1,f(x1),x2,f(x2),x3,f(x3),s,x4)
    if f(x1)*f(x4)>0 then
        x1=x4
    else
        x2=x4
    end
    if abs(f(x4))<e then
        break
    end
end
printf('\n\nThe solution of this equation is %g after %i Iterations',x4,i)
printf('\n\n\nThere are computation error in the answers given by the book in this example\n\n(value of x1 is used instead of x2)')