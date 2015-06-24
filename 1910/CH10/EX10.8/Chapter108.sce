// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 8")
//A double pipe heat exchanger of length(L)=0.30m is to be used to heat water(specific heat,cc=4.18kJ/(kg*K)) and mass flow rate(mdotw=2kg/s)
L=0.30;
cc=4.18;
mdotw=2;
//The water enters at temprature(Tci)=25°C  and leaves at temprature(Tco)=50°C
//The flow rate of oil is mdoth
Tci=25;
Tco=50; 
//The oil used as hot fluid has(specific heat,ch=1.88kJ/(kg*K)) and has inlet temprature(Thi)=100°C 
ch=1.88;
Thi=100;
disp("(a)Considering a parallel flow arrangement ")
//For minimum value of mdoth
//The theoretical minimum value of outlet temprature of hot fluid(Tho) under this situation is equal to Tco
Tho=Tco;
//The mass flow rate of oil is given by energy balance as mdoth=(mdotw*cpw*(Tco-Tci))/(cph*(Thi-Tho))
disp("The minimum flow rate required for the oil in kg/s")
mdoth=(mdotw*cc*(Tco-Tci))/(ch*(Thi-Tho))
disp("(b)Theoretical question")
disp("If LMTD--->0,Then for a finite value of heat transfer rate U*A--->infinity.For a given finite length this implies value of U which is not possible.")
disp("(c)Let us consider a counter flow arrangement")
//In this case value of Tho=Tci.
Tho=Tci;
//The mass flow rate of oil is given by energy balance as mdoth=(mdotw*cpw*(Tco-Tci))/(cph*(Thi-Tho))
disp("The minimum flow rate required for the oil in kg/s")
mdoth=(mdotw*cc*(Tco-Tci))/(ch*(Thi-Tci))
//Now Heat capacities are Ch=mdoth*ch and Cc=mdotw*cc
Ch=mdoth*ch; 
Cc=mdotw*cc;
Cmin=min(Ch,Cc);//minimum heat capacity in Ch and Cc 
//Effectiveness of heat exchanger is eff.
//Tho=Tci for this kind of arrangement
Tho=Tci;
disp("Effectiveness of heat exchanger is ")
eff=(mdoth*ch*(Thi-Tho))/(mdoth*ch*(Thi-Tci))






















