//The Power Method of finding largest Eigen value of given matrix
clear;
clc;
close();
A=[3 0 1;2 2 2;4 2 5];
new_A=A-7*eye(3,3);   //Given Matrix
u0=[1 1 1]';    //Intial vector
v=new_A*u0;
a=max(abs(u0));
while abs(max(abs(v))-a)>0.005    //for accuracy
  a=max(abs(v));
  u0=v/max(abs(v));
  v=new_A*u0;
end
format('v',5);
disp(max(v),'Eigen value :')
format('v',5);
disp(u0,'Eigen vector :')