//Example 10.40
//Formula Method
//Page no. 355
clc;clear;close;

deff('y=f(x,y)','y=x*y')
y(1)=0;y(6)=1;h=0.2;
for i=1:6
    x(i)=(i-1)*h
end
A=eye(4,5)-eye(4,5)
B=eye(4,1)-eye(4,1)
B(4,1)=-y(6)
for i=1:4
        A(i,i)=1;
        A(i,i+1)=-2-h^2*x(i+1)
        A(i,i+2)=1;
end
for i=1:4
    for j=1:4
        C(i,j)=A(i,j+1)
    end
end
printf('\n\n')
A=C;
D=inv(A)*B
for i=1:4
    y(i+1)=D(i);
    printf('\ty%i = %.5f\t',i,y(i+1))
end
printf('\n\n-------------------------------\n')
k=0;
for i=1:6
    for j=1:3
        if j==1 then
            D(i,j)=x(i)*y(i)
            printf(' f%i\t%.4f\t',i-1,D(i,j))
        elseif (i~=1 & i~=2) | k==1
            D(i,j)=D(i,j-1)-D(i-1,j-1)
            printf('%.4f\t',D(i,j))
            if i==2 then
                k=2;
            end
        end
    end
    if i==1 then
        k=1;
    end
    printf('\n')
end
printf('-------------------------------\n')
for i=1:4
    B(i)=D(i+2,3)*(h^2)/12
end

B(4,1)=-(B(4,1)-y(6))
printf('\n\n')
for i=1:4
    A(i,i)=-2
end
z=inv(A)*B
for i=1:4
    printf('\tz%i = %.5f\t',i,z(i))
end
printf('\n\n')
for i=1:4
    y(i+1)=y(i+1)+z(i);
    printf('\ty%i = %.5f\t',i,y(i+1))
end
printf('\n\n\n\n\n Note : Computation errors in book')