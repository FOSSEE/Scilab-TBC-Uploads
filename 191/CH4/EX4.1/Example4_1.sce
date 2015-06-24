//The Power Method of finding largest Eigen value of given matrix
clear;
clc;
close();
A=[3 0 1;2 2 2;4 2 5];   //Given Matrix
u0=[1 1 1]';    //Intial vector
v=A*u0;
a=max(u0);
while abs(max(v)-a)>0.05    //for accuracy
  a=max(v);
  u0=v/max(v);
  v=A*u0;
end
format('v',4);
disp(max(v),'Eigen value :')
format('v',5);
disp(u0,'Eigen vector :')