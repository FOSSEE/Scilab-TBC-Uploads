//Example 11.18
//Bender Schmidt Method
//Page no. 398
clc;clear;close;

h=1;k=1/8;c=sqrt(4);
r=k*c^2/h^2;
deff('y=f(x)','y=4*x-x^2/2')
for i=1:9
    if i~=1 & i~=9 then
        u(6,i)=f(i-1)
    else
        u(6,i)=0
    end
end
k=1;
printf('\n\n')
for i=5:-1:1
    for j=2:8
            u(i,j)=(u(i+1,j-1)+u(i+1,j+1))/2
        printf('\t u%i = %.4f \t',k,u(i,j))
        k=k+1;
    end
end
printf('\n')
printf('\n\n j\\i |\t')
for i=1:9
    printf('  %i\t',i-1)
end
printf('\n')
for i=1:80
    printf('_')
end

k=0;
for i=6:-1:1
    printf('\n %i   |\t',k)
    for j=1:9
        printf('%.4f\t',u(i,j))
    end
    k=k+1;
end