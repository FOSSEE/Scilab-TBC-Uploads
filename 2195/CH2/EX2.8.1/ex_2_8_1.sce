//Example 2.8.1://ARITHEMATIC MEAN ,median value ,standard deviation and variance
clc;
clear;
format('v',8)
q=[25.5,30.3,31.1,29.6,32.4,39.4,28.9,30.0,33.3,31.4,29.5,30.5,31.7,33.0,29.2];//
AM= mean(q);//arithematic mean in mm
for i= 1:15
    qb(i)= q(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8),qb(9),qb(10),qb(11),qb(12),qb(13),qb(14),qb(15)];//
AV=(-qb(1)-qb(2)+qb(3)+qb(4)-qb(5))/15;//
SD=stdev(Q);//standard deviation
V=SD^2;//variance
mv=q(12);//
disp(AM,"arithematic mean is in volts")
disp(mv,"median value is")
for i=1:15
      disp(qb(i),"deviation in "+string (q(i))+" is")
end
disp(round(SD),"standard deviation is")
disp(round(V),"variance is")