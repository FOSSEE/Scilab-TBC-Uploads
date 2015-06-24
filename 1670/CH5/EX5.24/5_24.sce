//Example 5.24
//Central Difference Derivatives
//Page no. 160
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('---------------------------------------------------------------------------------------------')
h=0.01;s=0.5;
deff('y=f1(x,p)','y=z(x,2)+p*z(x,3)+p*(p-1)*(z(x,4)+z(x-1,4))/4')
z=[0.01,98.4342;0.02,48.4392;0.03,31.7775;0.04,23.4492;0.05,18.4542];
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
        else
            printf('%.7f\t',z(i,j))
        end
    end
    printf('\n')
end
x00=0.03;x01=0.0341;
p=(x01-x00)/h
printf('\n\nf(0.0341) = %g',f1(3,p))