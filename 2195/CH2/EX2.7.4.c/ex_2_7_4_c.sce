//Example 2.7.4.c://standard deviation
clc;
clear;
format('v',7)
n=8
q=[10.3,10.7,10.9,9.7,9.5,9.2,10.3,11.7];//
AM= mean(q);//arithematic mean in mm
for i= 1:8
    qb(i)= q(i)-AM;
 
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8)];//
AV=(-qb(1)+qb(2)+qb(3)-qb(4)-qb(5)-qb(6)-qb(7)+qb(8))/n;//
SD=st_deviation(Q);//standard deviation
V=SD^2;//variance
disp(SD,"standard deviation in kg/cm^2")
//answer iswring in textbook

