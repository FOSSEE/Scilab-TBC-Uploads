//Example 2.4
//Regula Falsi Method
//Page no. 18
clc;clear;close;
deff('y=f(x)','y=x*log10(x)-1.2')
x1=2;x2=3;e=0.000001
printf('n\tx1\t\tf(x1)\t\tx2\t\tf(x2)\t\tx3\t\tf(x3)')
printf('\n-------------------------------------------------------------------------------------------------\n')
for i=0:19
    x3=x2*f(x1)/(f(x1)-f(x2))+x1*f(x2)/(f(x2)-f(x1))
    printf(' %i\t%f\t%f\t%f\t%f\t%f\t%f\n',i,x1,f(x1),x2,f(x2),x3,f(x3))
    if f(x1)*f(x3)>0 then
        x1=x3
    else
        x2=x3
    end
    if abs(f(x3))<e then
        break
    end
end
printf('\n\nThus the root is %.3f correct upto three places of decimal',x3)