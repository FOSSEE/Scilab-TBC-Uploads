//Example 11.20
//Finite Difference Method
//Page no. 403
clc;clear;close;

h=1;k=0.5;c=sqrt(4);
r=k^2*c^2/h^2;
for i=2:5
    if i<5 then
        u(4,i)=(i-1)*(4-(i-1))
        u(5,i)=(i-1)*(4-(i-1))
    else
        u(5,i)=0
    end
end
disp(u,'u = ')
k=2;
printf('\n\n')
for i=3:-1:1
    for j=2:4
        u(i,j)=u(i+1,j-1)+u(i+1,j+1)-u(i+2,j)
        printf('\tu%i,%i = %g',j-1,k,u(i,j))
    end
    k=k+1;
    printf('\n')
end