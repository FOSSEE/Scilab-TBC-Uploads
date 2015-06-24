//Example 5.37
//Newton Raphson Method
//Page no. 204
clc;clear;close;
p=1.1;T=250;R=0.082;a=3.6;b=0.043;
deff('y=f(v)','y=p*v^3-(b*p+R*T)*v^2+a*v-a*b')
deff('y=f1(v)','y=3*p*v^2-2*(b*p+R*T)*v')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=0.1;e=0.00001
for i=1:10
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, Volume v = %.10f ltr',x1)