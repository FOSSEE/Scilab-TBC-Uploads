//Example 11.17
//Bender Schmidt Method
//Page no. 396
clc;clear;close;

h=1;k=1/10;c=sqrt(5);
r=k*c^2/h^2;
for i=1:6
    if i<4 then
        u(6,i)=20*(i-1)
    else
        u(6,i)=60
    end
end
disp(u,'u = ')
k=1;
printf('\n\n')
for i=5:-1:1
    for j=2:6
        if j~=6 then
            u(i,j)=(u(i+1,j-1)+u(i+1,j+1))/2
        else
            u(i,j)=60
        end
        printf('\t u%i = %g \t',k,u(i,j))
        k=k+1;
    end
end
printf('\n')
printf('\n\n j\\i |\t')
for i=1:6
    printf('%i\t',i-1)
end
printf('\n')
for i=1:51
    printf('_')
end

k=0;
for i=6:-1:1
    printf('\n %i   |\t',k)
    for j=1:6
        printf('%g\t',u(i,j))
    end
    k=k+1;
end