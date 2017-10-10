//Example 2.8.3://ARITHEMATIC MEAN ,median value ,standard deviation 
clc;
clear;
format('v',6)
q=[29.2,29.5,29.6,30.0,30.5,31.4,31.7,32.4,33.0,33.3,39.4,28.9];//
AM= mean(q);//arithematic mean in mm
for i= 1:12
    qb(i)= q(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8),qb(9),qb(10),qb(11),qb(12)];//
AV=(-qb(1)-qb(2)+qb(3)+qb(4)-qb(5))/12;//
SD=stdev(Q);//standard deviation
V=SD^2;//variance
mv=q(5);//
disp(AM,"arithematic mean is ")
disp(mv,"median value is")
disp((SD),"standard deviation is")