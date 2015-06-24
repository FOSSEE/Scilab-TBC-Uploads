//Example 2.7.4.a://ARITHEMATIC MEAN
clc;
clear;
format('v',8)
q=[10.3,10.7,10.9,9.7,9.5,9.2,10.3,11.7];//
AM= mean(q);//arithematic mean in mm
for i= 1:8
    qb(i)= q(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5)];//
AV=(-qb(1)-qb(2)+qb(3)+qb(4)-qb(5))/10;//
SD=st_deviation(Q);//standard deviation
V=SD^2;//variance
disp(AM,"arithematic mean is in kg/cm^2")
//answer is wrong in textbook
