//Exa 3.6
clc;
clear;
close;
//Given data : 
RC=10;//in kohm
hfe=330;//unitless
hie=4.5;//in kOhm
//RS<<hie
AVM=hfe*RC*10^3/(hie*10^3+RC*10^3);//unitless
AVM1=AVM;//Gain of 1st stage
AVM2=AVM;//Gain of 2nd stage
AVM3=hfe*RC*10^3/(hie*10^3);//unitless(//Gain of 3rd stage)
OverallGain=AVM1*AVM2*AVM3;//unitless
disp(AVM,"Gain in mid frequeny range : ");
disp("This is the gain of 1st and 2nd stage.")
disp(OverallGain,"Overall Voltage gain for mid frequency range : ");