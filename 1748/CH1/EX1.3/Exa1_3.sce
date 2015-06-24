//Exa 1.3
clc;
clear;
close;
//given data
format('v',4);
StatorSlots=36;//No. of stator slots
Poles=4;//No. of poles
coilSpan=1:8;//unitless
SlotsPerPole=StatorSlots/Poles;// no. of slots per pole
disp(SlotsPerPole,"Slots/Pole = ");
disp("Here the coil span falls short by, "+string((2/9)*180)+" Degree");
alfa=40;//short pitch angle in degree
Kp=cosd(alfa/2);//Coil span Factor
disp(Kp,"Pitch Factor or coil span factor : ");