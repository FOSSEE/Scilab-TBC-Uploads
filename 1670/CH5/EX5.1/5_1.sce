//Example 5.1
//Backward Difference Formula
//Page no. 124
clc;close;clear;
printf('\tx\t\ty\t1st Difference    2nd Difference  3rd Difference  4th Difference\n')
printf('-------------------------------------------------------------------------------------------------')
h=0.02;
z=[-1;0;1;2;3;4;5]
deff('y=f(x)','y=x^3-3*x^2+5*x-7')
for i=1:7
    z(i,2)=f(z(i,1))
end
for i=3:8
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:7
    for j=1:6
        if z(i,j)==0 then
            printf('\t%i\t',z(i,j))
        else
            printf('\t%i\t',z(i,j))
        end
    end
    printf('\n')
end