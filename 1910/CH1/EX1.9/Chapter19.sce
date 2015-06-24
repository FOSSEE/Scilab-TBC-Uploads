// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 9")
//The Thickness(L) of wall= 150 mm or 0.15 m.
//The wall on one side is exposed to air at temprature(Ta)= 60°C and on the other side to air at temprature(Tb) = 20°C
//The average convective heat transfer coefficients are hbr1=40 W/(m^2°C) on the 60°C and hbr2= 10 W/(m^2°C) on 20°C side.
//The thermal conductivity(k)=.8 W/(m°C)
L=0.15;
Ta=60;
Tb=20;
hbr1=40;
hbr2=10;
k=0.8;
//Area(A=1 m^2 )since unit surface area is required.
A=1;
//The rate of heat transfer per unit surface area of wall is given by (Q/A)=(Ta-Tb)/((1/hbr1*A)+(L/(k*A))+(1/hbr2*A))
disp("The rate of heat transfer per unit surface area of wall is given by Q/A=(Ta-Tb)/((1/hbr1*A)+(L/(k*A))+(1/hbr2*A))in W/m^2")
//Let Q/A=F
F=(Ta-Tb)/((1/hbr1*A)+(L/(k*A))+(1/hbr2*A))
//The surface tempratures of wall on 60°C side is T1 and on 20°C side is T2
disp("The surface tempratures of wall on 60°C side is T1 =Ta-(Q/(A*hbr1)) in °C")
T1 =Ta-(F/hbr1)
disp("The surface tempratures of wall on 20°C side is T2 =Tb+(Q/(A*hbr2)) in °C")
T2 =Tb+(F/hbr2)

