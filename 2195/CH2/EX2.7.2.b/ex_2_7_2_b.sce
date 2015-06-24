//Example 2.7.2.b://deviation from mean
clc;
clear;
format('v',6)
q=[101.2,101.4,101.7,101.3,101.3,101.2,101.0,101.3,101.5,101.1];//
AM= mean(q);//arithematic mean in mm
for i= 1:10
    qb(i)= q(i)-AM;
        disp(qb(i),"deviation in "+string (q(i))+" is")
end


