//Example 18.6
//Crank Nicolson Method
//Page no. 631
clc;clear;close;
h=1/2;k=1/8;
r=k/h^2;
for i=1:2:3
    for j=1:9
        if i==1 | j==1 then
            u(i,j)=0;
        end
        if i==3 then
            u(i,j)=(j-1)/8
        end
    end
end
a=[3,-1,0;-1,3,-1;0,-1,3];
a=inv(a);
for j=2:9
        u(2,j)=(u(1,j-1)+2*u(2,j-1)+u(3,j-1)+u(1,j)+u(3,j))/6
end
u=u'
printf('\nfor h = 1/2\n\n')
printf('i\\j --> ')
for i=1:3
    printf('\t%i\t',i)
end
printf('\n---------------------------------------------------------------------------------------\n')
for i=1:9
    printf('\n %i',i)
    for j=1:3
        printf('\t   %.9f',u(i,j))
    end
end




h=1/4;k=1/8;
r=k/h^2;
for i=1:4:5
    for j=1:9
        if i==1 | j==1 then
            u(i,j)=0;
        end
        if i==5 then
            u(i,j)=(j-1)/8
        end
    end
end
a=[3,-1,0;-1,3,-1;0,-1,3];
a=inv(a);
for j=2:9
        b=[u(1,j-1)-u(2,j-1)+u(3,j-1)+u(1,j);u(2,j-1)-u(3,j-1)+u(4,j-1);u(3,j-1)-u(4,j-1)+u(5,j-1)+u(5,j)]
    x=a*b
    u(2,j)=x(1);u(3,j)=x(2);u(4,j)=x(3);
end
u=u'
printf('\n\n\n\n\nfor h = 1/4\n\n')
printf('i\\j --> ')
for i=1:5
    printf('\t%i\t',i)
end
printf('\n---------------------------------------------------------------------------------------\n')
for i=1:9
    printf('\n %i',i)
    for j=1:5
        printf('\t   %.9f',u(i,j))
    end
end