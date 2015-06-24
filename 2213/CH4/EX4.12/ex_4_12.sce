//Example 4.12 //maximum and minimum illumination 
clc;
clear;
close;
format('v',5 )
CP=1000;//
h=12;//in meter
d=24;//diamter in meter
mil=CP/(h)^2;//maximum illumination in lux
mal=mil*(12/sqrt(12^2+12^2))^3;//minimum illumination in lux
disp(mil,"maximum illumination in lux")
disp(mal,"minimum illumination in lux")
