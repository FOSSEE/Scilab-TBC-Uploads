//Example 5.24
//Bernoulli Method
//Page no. 189
clc;clear;close;

a=[1,-8,-15,10];
for i=1:2
    c(i)=0;
end
c(3)=1;
for k=4:13
   c(k)=-(a(2)*c(k-1)+a(3)*c(k-2)+a(4)*c(k-3))
   r(k-3)=c(k)/c(k-1) 
end
disp(c,'Ck Values')
disp(r,'Rk Values')
disp(r(k-3),'Therefore the exact root is = ')