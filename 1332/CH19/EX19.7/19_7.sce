//Example 19.7
//Leapfrog Method
//Page no. 662
clc;clear;close;

c=2;k=0.07;h=0.2;
r=c*k/h
printf('\n  x\ti\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  |\t|\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*k)
end
printf('\n---------------------------------------------------------------------------------------')

for j=1:7
    for i=1:6
        if j==1 | j==2 & i~=1 then
            u(i,j)=0;
            u(i+1,j)=0;
        elseif i==1 then
            u(i,j)=1
        else
            u(i,j)=u(i,j-2)-r*(u(i+1,j-1)-u(i-1,j-1))
        end
    end
end
for i=1:6
    printf('\n %.1f\t%i\t|\t\t',(i-1)*h,i-1)
    for j=1:7
        printf('%.3f\t',u(i,j))
    end
end