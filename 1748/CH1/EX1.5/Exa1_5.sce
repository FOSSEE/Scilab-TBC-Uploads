//Exa 1.5
clc;
clear;
close;
//given data
format('v',6);
NoOfPhase=3;//no of phase
SlotsPerPhase=3;//o. of slots
m=SlotsPerPhase;//no. of slots
SlotsPerPolePerPhase=SlotsPerPhase*NoOfPhase;//unitless
Beta=180/SlotsPerPolePerPhase;//in degree
disp("The phase difference difference between the induced emf in two coils lying in adjacent slots = "+string(Beta)+" degree");
Kb=sind(m*Beta/2)/(m*sind(Beta/2));//unitless
disp(Kb,"The breadth factor :  ");