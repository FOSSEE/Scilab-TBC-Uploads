//Example 18.4
//Forward Difference Method
//Page no. 624
clc;clear;close;

h=0.2;k=0.02;
r=k/h^2;
printf('\n j\tt\t|\ti -->\t')
for i=0:5
    printf('  %i\t',i)
end
printf('\n |\t|\t|\tx -->\t')
for i=0:5
    printf('%.3f\t',(i)/5)
end
printf('\n-------------------------------------------------------------------------------')
for j=1:6
    printf('\n %i\t%.3f\t|\t\t',j-1,(j-1)/50)
    for i=1:6
        if i==1 | i==6 then
            u(j,i)=0;
        elseif j==1 then
            u(j,i)=sin(%pi*(i-1)/5)
        else
            u(j,i)=(u(j-1,i-1)+u(j-1,i+1))/2
        end
        printf('%.3f\t',u(j,i))
    end
end