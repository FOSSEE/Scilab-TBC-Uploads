//Example 18.5
//Bender Schmidt Method
//Page no. 625
clc;clear;close;

h=0.1;k=0.005;
r=k/h^2;
printf('\n j  |\ti -->\t')
for i=0:10
    printf('  %i\t',i)
end
printf('\n |  |\tx -->\t')
for i=0:10
    printf('%.3f\t',(i)/10)
end
printf('\n------------------------------------------------------------------------------------------------------')
for j=1:9
    printf('\n %i  |\t\t',j-1)
    for i=1:11
        if i==1 | i==11 then
            u(j,i)=0;
        elseif j==1 then
            u(j,i)=sin(%pi*(i-1)/10)
        else
            u(j,i)=u(j-1,i)/2+(u(j-1,i-1)+u(j-1,i+1))/4
        end
        printf('%.3f\t',u(j,i))
    end
end