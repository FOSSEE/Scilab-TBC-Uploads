//Exa 1.11
clc;
clear;
close;
//given data
format('v',7);
OutputPower=500;//in KVA
OutputPower=500*1000;//in VA
VL=3300;//in Volts
Ra=0.3;//in Ohm
Xs=4;//in Ohm
PF=0.8;//Lagging Power factor
//Formula : outputPower=sqrt(3)*VL*IL
IL=OutputPower/(sqrt(3)*VL);//in Ampere
disp("For a star connected alternator, line current is equal to phase current. Therefore Ia=IL");
Ia=IL;//in Ampere
//PF=cosd(fi)=0.8 and sind(fi)=0.6
cos_fi=0.8;//Power factor
sin_fi=0.6;//Unitless
VPerPhase=VL/sqrt(3);//in Volts
E=sqrt((VPerPhase*cos_fi+Ia*Ra)^2+(VPerPhase*sin_fi+Ia*Xs)^2);//in Volts/Phase
Regulation=(E-VPerPhase)*100/VPerPhase;//in %
disp(Regulation,"Voltage Regulation at Full Load in % :");