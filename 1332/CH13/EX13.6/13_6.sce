//Example 13.6
//Extrapolation
//Page no. 430
clc;close;clear;
x=[-0.8,-0.6,-0.4,-0.2,0,0.2,0.4,0.6,0.8];
y=[0.2019,0.30119,0.44933,0.67032,1,1.49182,2.22554,3.32012,4.95303]
for i=1:4
    printf('\nh = %g\n',x(10-i))
    y1=(y(10-i)-y(i))/(2*x(10-i))
    printf('f1(0) = %g\n\n',y1)
end