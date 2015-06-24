clear;
clc;

//Example1.13[Heating of a Plate by Solar Energy]
//Given:-
a=0.6;//absorptivity of exposed surface of plate
q_incident=700;//Rate at which solar radiation incident on the plate [W/m^2]
T_surr=25+273;//Surrounding air temperature[K]
h=50;//Combined radiation and convection heat transfer coefficient[W/m^2.K]
//Solution
//Temperature keeps on increasing till a point comes  at which the rate of heat loss from the plate equals the rate of solar energy absorbed, and the temperature of the plate no longer changes
T_surface=T_surr+(a*(q_incident)/h);//[K]
disp("degree Celcius",T_surface-273,"The plate surface temperature is")