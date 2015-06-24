clc;
clear;
format('v',11);
p=[1,1,1];                                                                      //Given point
r=sqrt(p(1)^2+p(2)^2);  
B=atan(p(2)/p(1));
z=p(3);
p=[r B z];                                                                      //Given point in cylindrical coordinates

A=[1,1,1];                                                                      //Given vector field


a=[cos(B) sin(B) 0;-1*sin(B) cos(B) 0;0 0 1]*[1;1;1];                           //Given vector filed in cylincdrical coordinates
format('v',6)
disp(a,'the cylindrical components of the given vector filed:')
