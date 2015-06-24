//Example 3.6
clc;
clear;
close;
format('v',7);
//Given data :
p_water=1000;//in kg/m^3
p_liquid=800;//in kg/m^3
g=9.81;//gravity constant
h1=1.5;//m
px1=p_liquid*g*h1/1000;//kN/m^2
disp(px1,"Pressure at a point 1.5 meter below free surface in kN/m^2 : ");
h2=2;//m
px2=p_liquid*g*h2/1000;//kN/m^2
disp(px2,"Pressure at a point 2 meter below free surface in kN/m^2 : ");
h31=2;//m(for liquid)
h32=0.5;//m(for water)
px1=p_liquid*g*h31/1000;//kN/m^2
px2=p_water*g*h32/1000;//kN/m^2
px3=(px1+px2);//kN/m^2
disp(px3,"Pressure at a point 2.5 meter below free surface in kN/m^2 : ");
h=2;//meter(water level)
b=8;//meter(width of wall)
p_bottom=px1+(p_water*g*h)/1000;//kN/m^2
p_avg1=(px1+0)/2;//kN/m^2(top 2m liquid layer)
p_avg2=(px1+p_bottom)/2;//kN/m^2(top 2m water layer)
F_per_meter=p_avg1*h*1+p_avg2*h*1;//kN
Fwall=F_per_meter*b;//kN
disp(Fwall,"Force on the wall in kN : ");
