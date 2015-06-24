clear;
clc;

//Example14.6[Condensation and Freezing of Moisture in Walls]
Ti=20,To=-16;//Indoor and outdoor temperatures[degree Celcius]
R_wall=3.05;//Total thermal resistance of the wall[m^2.degree Celcius/W]
A=1;//Heat transfer area[m^2]
R_ext=0.40;//The thermal resistance of the exterior part of the wall beyond the insulation[m^2.degree Celcius/W]
Rv_int=0.012+0.0004,Rv_ext=0.0138+0.019;//Indoor and outdoor vapor resistances[Pa.m^2.s/ng]
phi1=0.6,phi2=0.7;//Indoor and outdoor Relative Humidity 
Psat1=2340,Psat2=151;//Indoor and outdoor saturation pressures[Pa]
//Solution:-
Q_wall=A*(Ti-To)/R_wall;//[W]
disp("W",Q_wall,"The rate of heat transfer through unit area of wall is")
T_I=To+(Q_wall*R_ext);
disp("degree Celcius",T_I,"The temperature of outer sheathing interface is")
P=234;//The saturation pressure of water at temp T_I[Pa]
Pv1=phi1*Psat1;
Pv2=phi2*Psat2;
disp("Pa",round(Pv2),"and","Pa",Pv1,"The vapor pressure at the indoor and the outdoor is")
mv_int=A*(Pv1-P)/Rv_int;
mv_ext=A*(P-Pv2)/Rv_ext;
disp("ng/s",mv_ext,"and","ng/s",mv_int,"The rate of moisture flow through the interior and exterior parts of the wall is")
mv_freezing=mv_int-mv_ext;
disp("ng/s",mv_freezing,"The moisture is freezing in the insulation at the rate of")