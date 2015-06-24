//Example 8.13
//Trapezoidal and Simpsons Rule
//Page no. 283
clc;close;clear;

ax=4;bx=4.4;ay=2;by=2.4;h=0.1
n=(bx-ax)/h+1
n=5;
for i=1:n
    x(i)=ax+(i-1)*h
    y(i)=ay+(i-1)*h
end
printf(' y/x\t|')
for i=1:n
    printf('\t%g',x(i))
end
printf('\n--------|--------------------------------------------')
for i=1:n
     printf('\n%g\t|\t',y(i))
    for j=1:n
        z(i,j)=x(j)*y(i)
        printf('%g\t',z(i,j))
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
printf('\n\n')
//simpsons rule
s=0;
for i=1:n
    for j=1:n
        if (i==1 | i==n) & (j==1 | j==n) then
            s=s+z(i,j)
        elseif (i/2-fix(i/2)~=0) & (j/2-fix(j/2)~=0) & (i==1 | j==1 | i==n | j==n)
            s=s+2*z(i,j)
        elseif (i/2-fix(i/2)==0) & (j/2-fix(j/2)==0) & (i==1 | j==1 | i==n | j==n)
            s=s+4*z(i,j)
        elseif (i/2-fix(i/2)==0) & (j/2-fix(j/2)==0) & (i==ceil(n/2) | j==ceil(n/2))
            s=s+8*z(i,j)
        elseif (i/2-fix(i/2)==0) & (j/2-fix(j/2)==0)
            s=s+16*z(i,j)
        else
            s=s+4*z(i,j)
        end
    end
end
s=(s*(h^2))/9
disp(s,'Simpsons Rule Sum = ')