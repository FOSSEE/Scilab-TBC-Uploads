//Example 1.60://standard deviation
clc;
clear;
u1=[1.8,4.6,6.6,9.0,11.4,13.4];//
v1=[2.2,3.2,5.2,6.4,8.0,10.0];//
for i= 1:6
    m(i)= u1(i)*v1(i)
    d(i)= u1(i)^2;//
end
su= u1(1)+u1(2)+u1(3)+u1(4)+u1(5)+u1(6);
sv= v1(1)+v1(2)+v1(3)+v1(4)+v1(5)+v1(6);
sm=m(1)+m(2)+m(3)+m(4)+m(5)+m(6);//
sd=d(1)+d(2)+d(3)+d(4)+d(5)+d(6);//
a= ((6*sm)-(su*sv))/((6*sd)-(su)^2);//
b=((sv*sd)-(sm*su))/((6*sd)-(su)^2);//
disp(a,"variable a is")
disp(b,"variable b is")
disp("best linear equation is 0.672u+0.591")
for i=1:6
    x(i)=a*u1(i)+b-v1(i)
    dx(i)=x(i)^2
end
sdx=dx(1)+dx(2)+dx(3)+dx(4)+dx(5)+dx(6);//
SD= sqrt(sdx/6);//
SDu=SD/a;//deviation of u
SDa= sqrt((6)/((6*sd)-(su^2)))*SD;//standard deviation in a
SDb= sqrt((sd)/((6*sd)-(su^2)))*SD;//standard deviation in b
disp(SD,"standard deviation is ±")
disp(SDu,"standard deviation in u is ±")
disp(SDa,"standard deviation in a is ±")
disp(SDb,"standard deviation in b is ±")
