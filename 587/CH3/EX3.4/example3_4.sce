clear;
clc;

//Example3.4[Equivalent Thickness for Contact Resistance]
//Given:-
k=237;//Thermal conductivity of aluminium[W/m.K]
L=0.01;//Thickness of aluminium plate[m]
hc=11000;//Thermal contact conductance[W/m^2.K]
//Solution:-
Rc=1/hc;//[m^2.K/W]
disp("Since thermal contact resistance is the inverse of thermal contact conductance")
disp("m^2.K/W",Rc,"Hence Therml contact Resistance is")
//For a unit surface area, the thermal resistance of a flat plate is defined as
R=L/k;
//Equivalent thickness for R=Rc
L=k*Rc;//[m]
disp("cm",(100*L),"Equivalent thickness is")