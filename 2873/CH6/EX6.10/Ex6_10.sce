// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 10")
p1=800;//initial pressure of steam in Kpa
T1=200;//initial temperature of steam in degree celcius
disp("here steam is kept in rigid vessel,therefore its specific volume shall remain constant")
disp("it is superheated steam as Tsat=170.43 degree celcius at 800 Kpa")
disp("from superheated steam table;v1=0.2404 m^3/kg")
disp("at begining of condensation specific volume = 0.2404 m^3/kg")
disp("v2=0.2404 m^3/kg")
v2=0.2404;
disp("this v2 shall be specific volume corresponding to saturated vapour state for condensation.")
disp("thus v2=vg=0.2404 m^3/kg")
vg=v2;
disp("looking into steam table vg=0.2404 m^3/kg shall lie between temperature 175 degree celcius(vg=0.2168 m^3/kg)and 170 degree celcius(vg=0.2428 m^3/kg)and pressure 892 Kpa(175 degree celcius)and 791.7 Kpa(170 degree celcius).")
disp("by interpolation,temperature at begining of condensation(T2)in K")
T2=175-((175-170)*(0.2404-0.2167))/(0.2428-.2168)
disp("similarily,pressure(p2)in Kpa")
p=892-(((892-791.7)*(0.2404-0.2168))/(0.2428-0.2168))
