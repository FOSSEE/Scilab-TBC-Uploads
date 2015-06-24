//Example 2.7.1.c://algebric sum of deviation
clc;
clear;
format('v',2)
q=[49.7,50.1,50.2,49.6,49.7];//
AM= mean(q);//arithematic mean in mm
for i= 1:5
    qb(i)= q(i)-AM;
end
asm1=qb(1)+qb(4)+qb(5);//
asm2=qb(2)+qb(3);//
asm=asm1+asm2;
disp(asm,"algebric sum of deviation is")
