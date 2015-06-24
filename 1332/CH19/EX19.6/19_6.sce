//Example 19.6
//Wendroff Method
//Page no. 661
clc;clear;close;

c=2;k=0.07;h=0.2;
a=(h+k*c)/(h-k*c)
printf('\n  x\ti\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  |\t|\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*k)
end
printf('\n---------------------------------------------------------------------------------------')
for i=1:6
    printf('\n %.1f\t%i\t|\t\t',(i-1)*h,i-1)
    for j=1:7
        if j==1 then
            u(i,j)=0;
        elseif i==1 then
            u(i,j)=1
        else
            u(i,j)=u(i-1,j-1)+(u(i,j-1)-u(i-1,j))/a
        end
        printf('%.3f\t',u(i,j))
    end
end