//Example 7.5
//Stirlings Central Difference Derivatives
//Page no. 238
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('-----------------------------------------------------------------------------------------')
h=0.1;s=1;
e=[1,6,30]
deff('y=f1(x,s)','y=((z(x,3)+z(x-1,3))/2+s*z(x-1,4)+(z(x-1,5)+z(x-2,5))*(3*s^2-1)/12)/h')
deff('y=f2(x,s)','y=(z(x-1,4))/h^2')
deff('y=f3(x,s)','y=(z(x-1,5)+z(x-2,5))/(2*h^3)')
z=[0.7,0.644218;0.8,0.717356;0.9,0.783327;1,0.841471;1.1,0.891207;1.2,0.932039;1.3,0.963558];
for i=3:6
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:7
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
fp=0;i=5;
for j=2:2:6
    fp=fp+((-1)^(j/2+1))*(z(i,j)-z(i-2,j))/(2*h*e(j/2))
    i=i-1;
end
printf('\n\nf`p (sin`(x))= %g',fp)