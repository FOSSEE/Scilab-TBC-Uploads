//Example 13.4
//Newton's Backward Difference Formula
//Page no. 425
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('------------------------------------------------------------------------------------------')
h=0.02;
z=[0.96,1.8025;0.98,1.7939;1.00,1.7851;1.02,1.7763;1.04,1.7673];
deff('y=f1(x,s)','y=(z(x,3)+(s+1/2)*z(x,4))/h')
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
printf('\n\ny1(1) = %g',f1(2,0))
printf('\n\ny1(1.03) = %g',f1(4,0.5))