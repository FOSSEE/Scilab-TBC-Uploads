//Example 1.49://ARITHEMATIC MEAN,AVERAGE DEVIATION ,STANDARD DEVIATION AND VARAIANCE
clc;
clear;
q=[1.34,1.38,1.56,1.47,1.42,1.44,1.53,1.48,1.40,1.59];//length in mm
AM= mean(q);//arithematic mean in mm
for i= 1:10
    qb(i)= q(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8),qb(9),qb(10)];//
AV=(-qb(1)-qb(2)+qb(3)+qb(4)-qb(5)-qb(6)+qb(7)+qb(8)-qb(9)+qb(10))/10;//
SD=stdev(Q);//standard deviation
V=SD^2;//variance
disp(AM,"arithematic mean in mm")
disp(AV,"average deviation")
disp(SD,"standard deviation in mm")
disp(V,"variance in mm square")