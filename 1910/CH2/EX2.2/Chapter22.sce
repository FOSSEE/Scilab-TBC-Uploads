// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 2")
//The Thickness of fire clay bricks (Lb)=.2 m
Lb=0.2;
//The thermal conductivity of fire clay bricks(kb)=1.0 W/(m*K)
kb=1;
//the Thicknes of insulating material is L
//The thermal conductivity of insulating material(ki)=.07 W/(m*K)
ki=.07;
//The furnace inner brick surface is at temprature Ti=1250 K
Ti=1250;
//The furnace outer brick surface is at temprature To=310 K
To=310;
//The maximum allowable heat transfer rate(Q) from wall = 900 W/m^2
Q=900;
//Q=(Ti-To)/((Lb/kb)+(L/ki)) so L=ki*(((Ti-To)/Q)-(Lb/kb))
disp("The thickness of insulating material L=ki*(((Ti-To)/Q)-(Lb/kb)) in m")
L=ki*(((Ti-To)/Q)-(Lb/kb))
