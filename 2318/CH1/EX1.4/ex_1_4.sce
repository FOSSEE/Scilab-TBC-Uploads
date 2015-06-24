//Example 1.4://ARITHEMATIC MEAN,AVERAGE DEVIATION ,STANDARD DEVIATION AND PROBABLE ERROR
clc;
clear;
T=[99.7,99.8,100,100.2,100.3];//VOLTS
q=[T(1),T(2),T(3),T(4),T(5)];//
AM=(q(1)+q(2)+q(3)+q(4)+q(5))/5;//arithematic mean in mm
for i= 1:5
    qb(i)= T(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5)];//
AV=(-qb(1)-qb(2)-qb(3)+qb(4)+qb(5))/5;//
SD=sqrt(((qb(1)^2)+(qb(2)^2)+(qb(3)^2)+(qb(4)^2)+(qb(5)^2))/5);//standard deviation
V=SD^2;//
disp(AM,"arithmetic mean is, (V)=")
disp(AV,"average deviation is, (V)=")
disp(SD,"standard deviation is, (V)=")
disp(V,"Variance is ,(V)=")

