//Example 18.7
//Gauss Seidel Method
//Page no. 637
clc;clear;close;
deff('y=f(x)','y=4*x-4*x^2')
h=0.2;k=0.04;
r=k/h^2;
printf('\n k\t|\ti -->\t')
for i=0:5
    printf('  %i\t',i)
end
printf('\n |\t|\tx -->\t')
for i=0:5
    printf('%.2f\t',(i)/5)
end
printf('\n-------------------------------------------------------------------------------')
for k=1:7
    printf('\n %i\t|\t\t',k-1)
    for i=1:6
        if i==1 | i==6 then
            u(k,i)=0;
        elseif k==1 then
            u(k,i)=f((i-1)/5)
        else
            u(k,i)=(u(k-1,i-1)+u(k-1,i+1))/2
        end
        printf('%.2f\t',u(k,i))
    end
end