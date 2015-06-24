//Example 20.1
//Direct Method
//Page no. 682
clc;clear;close;
h=1/3;
A=[-4,1,1,0;1,-4,0,1;1,0,-4,1;0,1,1,-4]
x=0;
for i=1:4
    x=x+h
    if i==4 then
        B(i,1)=0
    else
        B(i,1)=-1*sin(x*%pi)^2
    end
end
disp(A,'A =')
disp(B,'B =')
U=inv(A)*B
disp(U,'U =')