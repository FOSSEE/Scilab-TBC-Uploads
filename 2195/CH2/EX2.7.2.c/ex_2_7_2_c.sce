//Example 2.7.2.c://standard deviation
clc;
clear;
format('v',6)
q=[101.2,101.4,101.7,101.3,101.3,101.2,101.0,101.3,101.5,101.1];//
AM= mean(q);//arithematic mean in mm
for i= 1:10
    qb(i)= q(i)-AM;

end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8),qb(9),qb(10)];//
SD=st_deviation(Q);//standard deviation
disp(SD,"standard deviation in volts")



