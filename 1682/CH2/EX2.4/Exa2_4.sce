//Exa2.4
clc;
clear;
close;
//given data for original design
Tanks=4;//units
TankDia=5.2;//in meter
TankRad=TankDia/2;//in meters
TankHeight=7;//in meters
HeightDiaRatio=TankHeight/TankDia;//unitless
VolPerTank=(22/7)*TankRad^2*TankHeight;//in m^3
//given data for new design
disp("Cost of old design = 111% of cost of new design(Optimal Design)");
disp("Optimal Ratio of height to diameter = 4:1 ");
disp("h:d = 4:1");
disp("4*d = h");
disp("r = h/8");
disp("Since volume remains the same, Volume = (22/7)*(h/8)^2*h");
h=VolPerTank/(22/7)*64;//in meters
r=h/8;//in meters
d=2*r;//in meters
CostNewDesign=900000*(100/111);//in Rs
disp(900000-CostNewDesign,"Expected savings by redesign in Rs : ");