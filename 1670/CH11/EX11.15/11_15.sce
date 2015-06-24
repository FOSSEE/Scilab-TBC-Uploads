//Example 11.15
//Bender Schmidt Method
//Page no. 393
clc;clear;close;

h=1;k=1;c=1/sqrt(2);
r=k*c^2/h^2;
for i=1:5
    u(4,i)=i-1;
end
k=0;
for i=4:-1:1
    u(i,1)=0
    k=k+1;
end
k=1;
for i=2:5
    u(4,i)=k*(4-k)
    k=k+1;
end
disp(u,'u = ')
k=1;
printf('\n\n')
for i=3:-1:1
    for j=2:4
        u(i,j)=(u(i+1,j-1)+u(i+1,j+1))/2
        printf('\n\tu%i = %g\n',k,u(i,j))
        k=k+1;
    end
end