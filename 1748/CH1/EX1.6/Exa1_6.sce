//Exa 1.6
clc;
clear;
close;
//given data
format('v',7);
StatorSlots=24//No. of stator slots
Poles=4;//No. of poles
SlotsPerPole=StatorSlots/Poles;// no. of slots per pole
coilSpan=1:6;//unitless
disp("If the sides of the coil are placed in slots 1 and 7, then it is full pitched, but if the coil slides are placed in 1 and 6 then it is short pitched and the distance equal to 5/6th of pole-pitch.");
disp("Since it falls short by 1/6th of the pole-pitch, hence it is short by :")
theta=180/SlotsPerPole;//in Degree
disp(string(theta)+" Degree.")
Kp=cosd(theta/2);//unitless
disp(Kp,"Pitch-factor Kp : ");