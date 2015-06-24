//Example 6.5
//Power Fit Method
//Page no. 220
clc;close;clear;

x=[2,2.3,2.6,2.9,3.2]
y=[5.1,7.5,10.6,14.4,19]
printf('\t 2\t 3\t 4\t 6\t\t  2\t  3\n x\tx\tx\tx\tx\ty\tyx\tyx\n----------------------------------------------------------------\n')
x1=0;x2=0;x3=0;x4=0;
for i=1:5
    printf(' %g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n',x(i),x(i)^2,x(i)^3,x(i)^4,x(i)^6,y(i),x(i)^2*y(i),y(i)*x(i)^3)
    x1=x1+x(i)^4;
    x2=x2+x(i)^6;
    x3=x3+x(i)^2*y(i);
    x4=x4+y(i)*x(i)^3;
end
printf('----------------------------------------------------------------\n \t\t\t%g\t%g\t\t%g\t%g\n',x1,x2,x3,x4)
a(1)=x3/x1;
x5=poly(0,'x')
disp(a(1)*x5^2,'The power fit, y =')
a(2)=x4/x2;
disp(a(2)*x5^3,'The power fit, y =')
e=[0,0]
for i=1:2
    for j=1:5
        e(i)=e(i)+(a(i)*x(j)^(i+1)-y(j))^2
    end
    e(i)=sqrt(e(i)/5)
    printf('\n\nerror%i = %.2g\n',i,e(i))
end
if e(1)>e(2) then
    disp(a(2)*x5^3,'y = ','Hence the best power fir curve is')
else
    disp(a(1)*x5^2,'y = ','Hence the best power fir curve is')
end