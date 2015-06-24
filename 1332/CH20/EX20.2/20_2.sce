//Example 20.2
//Five Point Formula
//Page no. 683
clc;clear;close;

A=[-4,1,1,0;1,0,-4,1;1,-4,0,1;0,1,1,-4];
B=[-25;-150;-25;-150];
u1=inv(A)*B;
j=0;k=1
for i=1:4
    j=j+1;
    printf('\nu%i%i = %g\n',k,j,u1(i))
    if i==2 then
        j=0;k=2
    end
end
printf('\n\n  U = \n')
for i=1:4
    printf('\n')
    for j=1:4
        if j==1 then
            u(i,j)=0
        elseif j==4
            u(i,j)=100
        elseif (i==1 | i==4) & j==2
            u(i,j)=25
        elseif i==1 | i==4
            u(i,j)=u(i,j-1)*2
        else
            u(i,j)=u1((j-1)*2-i+2)
        end
        printf('\t%g\t',u(i,j))
    end
end