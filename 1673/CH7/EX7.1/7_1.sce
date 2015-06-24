//example 7.1
//inverse of matrix
//page 256
clc;clear;close;
A=[1,2,3;0,1,2;0,0,1];
A_1=1/A//inverse of matrix
for i=1:3
    for j=1:3
        printf('%d  ',A_1(i,j))
    end
    printf('\n')
end