//ill conditioned linear system
//example 7.11
//page 277
clc;clear;close;
A=[25 24 10;66 78 37;92 -73 -80];
de_A=det(A);
for i=1:3
    s=0;
    for j=1:3
        s=s+A(i,j)^2
    end
    s=sqrt(s);
    k=de_A/s;
end
if k<1 then
    printf(' the fuction is ill conditioned')
end
