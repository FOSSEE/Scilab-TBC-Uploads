//modern gauss jordan method
//example 7.7
//page 269
clc;clear;close;
A=[2 1 1;3 2 3;1 4 9];
I=eye(3,3);
I1=[1;0;0];
I2=[0;1;0];
I3=[0;0;1];
A1=A^-1*I1;
A2=A^-1*I2;
A3=A^-1*I3;
for i=1:3
    AI(i,1)=A1(i,1)
end
for i=1:3
    AI(i,2)=A2(i,1)
end
for i=1:3
    AI(i,3)=A3(i,1)
end
printf('the inverse of the matrix\n')
for i=1:3
    for j=1:3
        printf('%0.2g     ',AI(i,j))
    end
    printf('\n');
    end