//Example 11.8
//Recursive Formula
//Page no. 357
clc;close;clear;

A=[2,-1,0,0;-1,2,-1,0;0,-1,2,-1;0,0,-1,2];
l=poly(0,"l");
p0=1;
p1=A(1,1)-l;
for i=2:4
    p2=(A(i,i)-l)*p1-A(i,i-1)^2*p0;
    p0=p1;
    p1=p2;
    printf('\n\np%i(l) = ',i);
    disp(p2)
end
