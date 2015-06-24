//Example 1.59://READING
clc;
clear;
q=[5.30,5.73,6.77,5.26,4.33,5.45,6.09,5.64,5.81,5.75];//length in mm
AM= mean(q);//arithematic mean in mm
for i= 1:10
    qb(i)= q(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8),qb(9),qb(10)];//
AV=(-qb(1)-qb(2)+qb(3)+qb(4)-qb(5)-qb(6)+qb(7)+qb(8)-qb(9)+qb(10))/10;//
SD=st_deviation(Q);//standard deviation
for i=1:10
    B(i)= (qb(i))/SD;//
    disp(B(i))
end
V=SD^2;//variance
disp(AM,"arithematic mean in mm")
disp(SD,"standard deviation in mm")
disp("it is given that for 10 readings the ratio of deviation to standard deviation is not to exceed 1.96 and therefore reading no. 5 i.e. 4.33m should be rejected")

