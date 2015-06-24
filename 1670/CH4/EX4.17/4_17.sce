//Example 4.17
//Gerschgorin Circles
//Page no. 118
clc;clear;close;

A=[1,2,3;2,4,6;3,6,1];
j=2;
k=3;
printf('The Gerschgorin Circles are : \n\n  A =' )
for i=1:3
    printf('\t|z-%i| = |%i| + |%i| = %i\n',A(i,i),A(i,j),A(i,k),A(i,j)+A(i,k))
    if j~=1 then
        j=j-1
    end
    if i==2 then
        k=k-1
    end
end