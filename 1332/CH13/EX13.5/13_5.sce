//Example 13.5
//Stirlings Central Difference Derivatives
//Page no. 426
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\n')
printf('---------------------------------------------------------------------------')
h=0.01;s=0.5;
deff('y=f1(x,s)','y=((z(x,3)+z(x-1,3))/2+s*z(x-1,4)+(z(x-1,5)+z(x-2,5))*(3*s^2-1)/12)/h')
deff('y=f2(x,s)','y=(z(x-1,4))/h^2')
deff('y=f3(x,s)','y=(z(x-1,5)+z(x-2,5))/(2*h^3)')
z=[1.00,1.00000;1.01,1.00499;1.02,1.00995;1.03,1.01489;1.04,1.01980;1.05,1.02470;1.06,1.02956;1.07,1.03441;1.08,1.03923;1.09,1.04403;1.10,1.04881;1.11,1.05357;1.12,1.05830;1.13,1.06301;1.14,1.06771;1.15,1.07238;1.16,1.07703];
for i=3:5
    for j=1:19-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:17
    for j=1:5
        if z(i,j)==0 then
            printf(' \t')
        else
            printf('%.7f\t',z(i,j))
        end
    end
    printf('\n')
end
printf('\n\ny1(1.125) = %g   (exact value = 0.4771404)',f1(13,0.5))
printf('\n\ny2(1.125) = %g   (exact value = -0.20951)',f2(13,0.5))
printf('\n\ny3(1.125) = %g   (exact value = 0.27935)',f3(13,0.5))