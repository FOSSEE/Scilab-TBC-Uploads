clear;
clc;

//Example14.3[Mole Fraction of Dissolved Air in Water]
//Given:-
P_vapor=1.96;//The partial presure of water vapor in the air at the lake surface is the saturation pressure of water at 17 degree Celcius
H=62000;//Henry's constant for air dissolved in water at 290K[bar]
P=92;//Atmospheric Pressure at lake level[kPa]
//Solution:-
P_dryair=P-P_vapor;//[kPa]
disp("bar",P_dryair/100,"The partial pressure of dry air is")
y_dryair=(P_dryair/100)/H;
disp(y_dryair,"The mole fraction of air in the water is")