clear;
clc;

//Example1.9[Radiation Effect on Thermal Comfort]
//Given:-
T_room=22+273;//Temperature fo room[K]
T_wntr=10+273;//Average Temperature of inner surfaces of walls,floors and the cieling in winter[K]
T_smmr=25+273;//Average Temperature of inner surfaces of walls,floors and the cieling in summer[K]
T_outr=30+273;//Average outer surface temperature of the person[K]
A=1.4;//The exposed surface area[m^2]
e=0.95;//Emissivity of person
sigma=5.67*(10^(-8));//Stefan's constant
Q_rad_wntr=e*sigma*A*((T_outr^4)-(T_wntr^4));//[W]
Q_rad_smmr=e*sigma*A*((T_outr^4)-(T_smmr^4));//[W]
disp("W",Q_rad_smmr,"and",round(Q_rad_wntr),"The net rates of radiation heat transfer from the body to the surrounding walls,ceiling, and floor in winter and summer are respectively")
