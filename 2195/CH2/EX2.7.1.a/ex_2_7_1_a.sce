//Example 2.7.1.a://ARITHEMATIC MEAN
clc;
clear;
format('v',6)
q=[49.7,50.1,50.2,49.6,49.7];//
AM= mean(q);//arithematic mean in mm
for i= 1:5
    qb(i)= q(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5)];//
AV=(-qb(1)-qb(2)+qb(3)+qb(4)-qb(5))/10;//
SD=stdev(Q);//standard deviation
V=SD^2;//variance
disp(AM,"arithematic mean is")