clear;
clc;

//Example14.2[Mole Fraction of Water Vapor at the surface of a Lake]
//Given:-
P_vapor=1.705;//Partial Pressure of water vapor in the air at the lake surface is saturation pressure of watre at 15 degree Celcius[kPa]
T_lake=15;//[degree Celcius]
P=92;//Atmospheric pressure at lake level [kPa]
//Solution:-
y_vapor=P_vapor/P;
disp(y_vapor,"The mole fraction of water vapor in the air at the surface of lake is")
y_water=1-y_vapor;//Since water contains dissolved air
disp(y_water,"Mole fraction of liquid water in lake")