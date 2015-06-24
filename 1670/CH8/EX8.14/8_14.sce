//Example 8.14
//Trapezoidal Rule
//Page no. 284
clc;close;clear;

ax=1;bx=2;ay=1;by=2;h=0.25
n=(bx-ax)/h+1
n=5;
for i=1:n
    x(i)=ax+(i-1)*h
    y(i)=ay+(i-1)*h
end
printf(' y/x\t|')
for i=1:n
    printf('\t%g\t',x(i))
end
printf('\n--------|-------------------------------------------------------------------------------')
for i=1:n
     printf('\n%g\t|\t',y(i))
    for j=1:n
        z(i,j)=1/(x(j)+y(i))
        printf('%.5g\t\t',z(i,j))
    end
end

//trapezoidal rule
s=0;
for i=1:n
    for j=1:n
        if (i==1 | i==n) & (j==1 | j==n) then
            s=s+z(i,j)
        elseif i==1 | i==n | j==1 | j==n
            s=s+2*z(i,j)
        else
            s=s+4*z(i,j)
        end
    end
end
s=(s*(h^2))/4
printf('\n\n')
disp(s,'Trapezoidal Rule Sum = ')