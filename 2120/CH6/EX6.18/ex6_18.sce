// Exa 6.18
clc;
clear;
close;
// Given data
Q1 = 1000;// in kW
Q2 = 492;// in kW
T1 = 285;// in °C
T1 = T1 + 273;// in K
T2 = 5;// in °C
T2 = T2 + 273;// in K
Eta_carnot = (T1-T2)/T1*100;// in percentage
disp(Eta_carnot,"Carnot efficiency in % is : ")
Eta_heat = (Q1 - Q2)/Q1*100;// in percentage
disp(Eta_heat,"Efficiency of the heat engine in % is : ")
if Eta_heat>Eta_carnot then
    disp("As the efficiency of heat engine cannot be more than Carnot efficiency, Hence engine cannot execute irreversible cycle.So engine will execute Carnot Cycle which is a reversible cycle too")
end
