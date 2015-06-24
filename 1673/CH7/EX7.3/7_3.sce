//example 7.3
//Vector Norms
//page 262
clc;clear;close;
A=[1,2,3;4,5,6;7,8,9];
s=0;
for i=1:3
    for j=1:3
        s=s+A(j,i);
    end
    C(i)=s;
    s=0;
end
printf('||A||1=%d\n',max(C));
for i=1:3
    for j=1:3
        s=s+(A(i,j)*A(i,j))
    end
end
printf('||A||e=%.3f\n',sqrt(s));
s=0;
for i=1:3
    for j=1:3
        s=s+A(i,j);
    end
    C(i)=s;
    s=0;
end
printf('||A||~=%d\n',max(C));