//Example 11.19
//Gauss Seidel Method
//Page no. 399
clc;clear;close;

h=0.2;k=0.02;r=k/h^2;
deff('y=f(x)','y=sin(%pi*x)')
n=1/h+1;
for i=1:n
    u(n,i)=f((i-1)*h)
end
disp(u)
m=1;l=1;
printf('\n\n')
for i=5:-1:1
    for j=2:5
        u(i,j)=(u(i,j-1)+u(i+1,j+1))/6+2*(u(i+1+l-1,j)+r*(u(i+1+l-1,j-1)-2*(u(i+1+l-1,j))+u(i+1+l-1,j+1))/2)/3
        printf(' u%i(%i) = %g \t',m,l,u(i,j))
        m=m+1;
    end
    printf('\n')
    l=l+1
end
printf('\n\n\n')
printf('The Anlytical Solution u1 = %g',exp(-%pi^2*k)*sin(%pi*h))