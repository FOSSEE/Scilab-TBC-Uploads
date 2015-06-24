clc
//angle free surface makes with the horizontal in an accelerated body
a=1;//ft/s^2
g=32.2;//ft/s^2
theta=atan(a/g);//radians
theta=theta*180/%pi;//degrees
disp("The angle made by free surface with the horizontal is")
disp(theta)
disp("degrees")