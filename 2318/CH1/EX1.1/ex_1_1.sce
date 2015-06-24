//Example 1.1://ARITHEMATIC MEAN,AVERAGE DEVIATION ,STANDARD DEVIATION AND PROBABLE ERROR
clc;
clear;
T=[99.7,99.8,99.9,100,100.1,100.2,100.3];//VOLTS
f=[2,8,20,40,21,6,3];//frequency of occurence
q=[T(1)*f(1),T(2)*f(2),T(3)*f(3),T(4)*f(4),T(5)*f(5),T(6)*f(6),T(7)*f(7)];//
AM=(q(1)+q(2)+q(3)+q(4)+q(5)+q(6)+q(7))/100;//arithematic mean in mm
for i= 1:7
    qb(i)= T(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7)];//
AV=(-qb(1)*f(1)-qb(2)*f(2)-qb(3)*f(3)-qb(4)*f(4)+qb(5)*f(5)+qb(6)*f(6)+qb(7)*f(7))/100;//
SD=sqrt(((qb(1)^2*f(1))+(qb(2)^2*f(2))+(qb(3)^2*f(3))+(qb(4)^2*f(4))+(qb(5)^2*f(5))+(qb(6)^2*f(6))+(qb(7)^2*f(7)))/100);//standard deviation
r1= 0.6745*SD;//PROBABLE ERROR OF ONE READING
disp(AM,"arithmetic mean is,(V)=")
disp(AV,"average deviation is,(V)=")
disp(SD,"standard deviation is,(V)=")
disp(r1,"probable error is,(V)=")

