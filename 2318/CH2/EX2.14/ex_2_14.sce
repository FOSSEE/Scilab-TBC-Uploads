//Example 2.14://total power and power factor
clc;
clear;
close;
disp("when both readings are positive")
w2=2300;//watts
w1=4600;//watts
p1=w2+w1;//
ph=atand((sqrt(3)*(w2-w1))/(w2+w1));//in degree
pf=cosd(ph);//power factor
disp(p1,"power is,(W)=")
disp(pf,"power factor (leading) is")
disp("when second readig is negative")
w21=-2300;//watts
w1=4600;//watts
p2=w21+w1;//
ph2=atand((sqrt(3)*(w21-w1))/(w21+w1));//in degree
pf1=cosd(ph2);//power factor
disp(p2,"power is,(W)=")
disp(pf1,"power factor (leading) is")
