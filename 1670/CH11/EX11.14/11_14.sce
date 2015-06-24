//Example 11.14
//Crank Nicolson Method
//Page no. 390
clc;clear;close;
h=1/2;k=1/8;
r=k/h^2;
for i=1:3
    for j=1:2
        if i==1 | j==1 then
            u(i,j)=0;
        end
        if i==3 then
            u(i,j)=(j-1)*k
        end
    end
end
for j=2:2
        u(2,j)=(u(1,j-1)+2*u(2,j-1)+u(3,j-1)+u(1,j)+u(3,j))/6
end
u=u'
printf('\nfor h = 1/2 and k=1/8\n\n')
printf('i\\j --> ')
for i=1:1
    printf('\tu%i\t',i)
end
printf('\n----------------------------------------------\n')
for i=2:2
    for j=2:2
        printf('\t   %.9f',u(i,j))
    end
end




h=1/4;k=1/8;
r=k/h^2;
for i=1:5
    for j=1:5
        if i==1 | j==1 then
            u(i,j)=0;
        end
        if i==5 then
            u(i,j)=(j-1)*k
        end
    end
end
a=[3,-1,0;-1,3,-1;0,-1,3];
a=inv(a);
for j=2:5
        b=[u(1,j-1)-u(2,j-1)+u(3,j-1)+u(1,j);u(2,j-1)-u(3,j-1)+u(4,j-1);u(3,j-1)-u(4,j-1)+u(5,j-1)+u(5,j)]
    x=a*b
    u(2,j)=x(1);u(3,j)=x(2);u(4,j)=x(3);
end
u=u'
printf('\n\n\n\n\nfor h = 1/4 and k=1/8\n\n')
printf('i\\j --> ')
for i=1:3
    printf('\tu%i\t',i)
end
printf('\n--------------------------------------------------------\n')
for i=2:2
    for j=2:4
        printf('\t   %.9f',u(i,j))
    end
end





h=1/4;k=1/16;
r=k/h^2;
for i=1:5
    for j=1:3
        if i==1 | j==1 then
            u(i,j)=0;
        end
        if i==5 then
            if j==3 then
                k=1/8;
            end
            u(i,j)=(j-1)*k
        end
    end
end
a=[4,-1,0;-1,4,-1;0,-1,4];
a=inv(a);
for j=2:3
        b=[u(1,j-1)-u(2,j-1)+u(3,j-1)+u(1,j);u(2,j-1)-u(3,j-1)+u(4,j-1);u(3,j-1)-u(4,j-1)+u(5,j-1)+u(5,j)]
    x=a*b
    u(2,j)=x(1);u(3,j)=x(2);u(4,j)=x(3);
end
u=u'
printf('\n\n\n\n\nfor h = 1/4 and k=1/16\n\n')
printf('i\\j --> ')
for i=1:3
    printf('\tu%i\t',i)
end
printf('\n---------------------------------------------------------\n')
for i=2:3
    printf('\n')
    for j=2:4
        printf('\t   %.9f',u(i,j))
    end
end