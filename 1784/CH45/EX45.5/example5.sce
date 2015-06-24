//Example 5
//chapter 45
//clc()
a_o=5.63//A
d=a_o/sqrt(5)
lambda=1.10//in A
disp(d,"Interplanar spacing d in A=")

disp("diffracted beam occurs when m=1,m=2 and m=3")
disp("when m1=1, theta in degree=")
m1=1
x=(m1*lambda)/(2*d)
theta_1=asind(x)
disp(theta_1)
disp("when m1=2, theta in degree=")
m2=2
x=(m2*lambda)/(2*d)
theta_2=asind(x)
disp(theta_2)
disp("when m1=3, theta in degree=")
m3=3
x=(m3*lambda)/(2*d)
theta_3=asind(x)
disp(theta_3)