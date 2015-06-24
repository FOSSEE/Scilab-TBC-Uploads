//Example 7.8
//Stirlings Central Difference Derivatives
//Page no. 242
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('------------------------------------------------------------------------------------------')
h=0.01;
a=poly(0,'n');
deff('y=f3(x)','y=z(x,1)^2*y2(x)+z(x,1)*y1(x)+(z(x,1)^2-a^2)*z(x,2)')
deff('y=f1(x)','y=(z(x+1,2)-z(x-1,2)-(z(x,4)-z(x-2,4))/factorial(3))/(2*h)')
deff('y=f2(x)','y=(z(x-1,4)-2*(z(x-2,6))/factorial(4))/h^2')
z=[85,0.0353878892;85.01,0.0346198696;85.02,0.0338490002;85.03,0.0330753467;85.04,0.032298975];
for i=3:6
    for j=1:7-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:5
    for j=1:6
        if z(i,j)==0 then
            printf(' \t')
        elseif j==1
            printf('   %.2f\t',z(i,j))
        else
            printf('%.10f\t',z(i,j))
        end
    end
    printf('\n')
end
y1(3)=f1(3);
y2(3)=f2(3);

printf('\n\ny`(85.02) = %g\n\ny``(85.02) = %.7g\n\n',y1(3),y2(3))
n=f3(3)
disp(n,"0 =")
n=roots(n)
for i=1:2
    if abs(n(i))==n(i) then
        n1=n(i)
    end
end
printf('\n\nn = %.2g',n1)