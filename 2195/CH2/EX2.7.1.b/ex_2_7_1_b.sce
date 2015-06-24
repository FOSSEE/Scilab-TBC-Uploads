//Example 2.7.1.b://deviation
clc;
clear;
q=[49.7,50.1,50.2,49.6,49.7];//
AM= mean(q);//arithematic mean in mm
for i= 1:5
    qb(i)= q(i)-AM;
    disp(qb(i),"deviation in "+string (q(i))+" is")
end

