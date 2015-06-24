//page 249
clear;
close;
clc;
A=[0 4;0 1/2];
disp(A,'A=');
eig=spec(A);
disp(eig,'Eigen values:')
[v,D]=spec(A);
u0=[v(:,1)];//Taking u0 as the 1st eigen Vector.
for k=0:5
    disp(k,'k=');
    u=A*u0;
    disp(u,'U(k+1)(K from 0 to 5)')
    u0=u;
end
u0=[v(:,2)];//Taking u0 as the 2nd eigen vector.
for k=0:5
    disp(k,'k=');
    u=A*u0;
    disp(u,'U(k+1)=')
    u0=u;
end