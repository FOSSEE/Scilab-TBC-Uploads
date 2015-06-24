//Example 22.5
clc
x=699//in micrometer(w-a)
t=1200 //in micrometer
b=x/2
theta_2=atand(b/t)
disp(theta_2,"Angle in degree=")
y=sind(theta_2)
n1=1
n2=1.55
theta_1=asind((n2*y)/n1)
disp(theta_1,"Angle in degree=")
