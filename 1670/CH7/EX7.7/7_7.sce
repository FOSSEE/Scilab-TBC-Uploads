//Example 7.7
//Stirlings Central Difference Derivatives
//Page no. 240
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('------------------------------------------------------------------------------------------')
h=0.2;s=1;
a=poly(0,'a');
b=poly(0,'b');
deff('y=f3(x)','y=z(x,1)*y2(x)+(z(x,1)-b)*z(x,2)')
deff('y=f4(x)','y=y1(x)*a')
deff('y=f1(x)','y=(z(x+1,2)-z(x-1,2)-(z(x,4)-z(x-2,4))/factorial(3)+4*(z(x-1,6)-z(x-3,6))/factorial(5))/(2*h)')
deff('y=f2(x)','y=(z(x-1,4)-2*(z(x-2,6))/factorial(4))/h^2')
z=[0.8,1.73036;1,1.95532;1.2,2.19756;1.4,2.45693;1.6,2.73309;1.8,3.02549;2,3.33334;2.2,3.65563];
x0=0.8;
for i=3:6
    for j=1:10-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:8
    for j=1:6
        if z(i,j)==0 then
            printf(' \t')
        elseif j==1
            printf('   %.1f\t\t',z(i,j))
        else
            printf('%.6f\t',z(i,j))
        end
    end
    printf('\n')
end
y1(4)=f1(4);
y2(4)=f2(4);
y1(5)=f1(5);
y2(5)=f2(5);
g=f3(4)
printf('\n\ny`(1.4) = %g\n\ny``(1.4) = %g\n\ny`(1.6) = %g\n\ny``(1.6) = %g\n\n',y1(4),y2(4),y1(5),y2(5))
disp(f3(4),f4(4))
printf('\n\n')
A=[y1(4),z(4,2);y1(5),z(5,2)];
B=[z(4,1)*(y2(4)+z(4,2));z(5,1)*(y2(5)+z(5,2))];
disp(f3(5),f4(5))

C=inv(A)*B;
printf('\n\n a = %g\n\n b = %g',C(1),C(2))