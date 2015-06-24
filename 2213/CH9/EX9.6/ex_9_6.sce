//Example 9.6:draw chracterstics
clc;
clear;
close;
format('v',6)
Ia=[60;80;100;120;160;180];// in amperes
sp1=[47.4;40.3;35.8;33.9;29.8;28.5];//in kmph
dpk=[440;700;970;1245;1800;2360];//in kg
sp2=[58.1;50;45;40.3;35;32];//
for i=1:6
    dpk1(i)= ((dpk(i))*(sp1(i)))/(sp2(i));//
    disp("for current "+string(Ia(i))+" amperes ,speed in kmph is "+string(sp2(i))+" and drawbar pull in kg is "+string(dpk1(i))+" ")
end
