//Example 5.14
//Kizner Method
//Page no. 172
clc;clear;close;
h2=0.00001
deff('x=f(x)','x=2*x-3-cos(x)')
deff('y=f1(x,y)','y=h2/(-x+y)')      //function for differentiation
printf('n\th\tc\txn\t\tf(xn)\t\tF(xn)\t\tk1\t\t v\t\tXn+1\n')
printf('--------------------------------------------------------------------------------------------------------------------\n')
x0=2;e=0.00001;h=0.5;c=0.5;
for i=1:11
    h1=-f(x0);
    F=f1(f(x0),f(x0+h2))
    k1=h1*F/2;
    v=h*f(x0)/(c*(f(x0+c+h)-f(x0+c)))-k1/c;
    a=0;
    for j=0:3
        a=a+(v^j)/factorial(j+1)
    end
    x1=x0+k1*a
    printf(' %i\t%g\t%g\t%.6f\t%.6f\t%.6f\t%.8f\t %.5f\t%.6f\n',i-1,h,c,x0,f(x0),F,k1,v,x1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, the solution is %.10f',x1)