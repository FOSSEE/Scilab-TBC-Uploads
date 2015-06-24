//Exa 6.5
clc;
clear;
close;
// Given data
T1 = 24;// in °C
T1 = T1 + 273;// in K
T2 = 2;// in °C
T2 = T2 + 273;// in K
Q = 100;//in MJ/h
Q = Q * 10^3;//in kJ/h
COP_heatPump = T1/(T1-T2);
W = Q/COP_heatPump;//in kJ/h
W = W/3600;// in kW
disp(W,"The theoretical minimum power required to drive the heat pump in kW is : ")
COP_refrigerator = T2/(T1-T2);
W = Q/COP_refrigerator;// in kJ/h
W = W/3600;// in kW
disp(W,"The theoretical power required to drive the heat pump when it is used as a refrigerator in kW is : ");
