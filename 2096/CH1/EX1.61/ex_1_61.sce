//Example 1.61://standard deviation
clc;
clear;
u1=[550,700,850,1000];//
v1=[0.04182,0.04429,0.05529,0.0610];//
for i= 1:4
    m(i)= u1(i)*v1(i)
    d(i)= u1(i)^2;//
end
su= u1(1)+u1(2)+u1(3)+u1(4);
sv= v1(1)+v1(2)+v1(3)+v1(4);
sm=m(1)+m(2)+m(3)+m(4);//
sd=d(1)+d(2)+d(3)+d(4);//
a= ((4*sm)-(su*sv))/((4*sd)-(su)^2);//
b=((sv*sd)-(sm*su))/((4*sd)-(su)^2);//
disp(a,"variable a is")
disp(b,"variable b is")
disp("best linear equation is 45.7*10^-6*f^2+15.18*10^-3*f in mW")
//value of a and b is wrong in the book

