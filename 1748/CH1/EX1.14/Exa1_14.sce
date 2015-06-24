//Exa 1.14
clc;
clear;
close;
//given data
format('v',5);
V=6600;//in Volts
OutputPower=2000;//in KVA
OutputPower=2000*1000;//in VA
//Formula : outputPower=sqrt(3)*VL*IL
IL=OutputPower/(sqrt(3)*V);//in Ampere
Ia=IL;//in Ampere
Ra=0.4;//in Ohm
Xs=4.5;//in Ohm
//PF=cosd(fi)=0.8 and sind(fi)=0.6
cos_fi=0.8;//Power factor
sin_fi=0.6;//Unitless
VPerPhase=V/sqrt(3);//in Volts
E=sqrt((VPerPhase*cos_fi+Ia*Ra)^2+(VPerPhase*sin_fi+Ia*Xs)^2);//in Volts/Phase
Regulation=(E-VPerPhase)*100/VPerPhase;//in %
disp(Regulation,"Percentage Change in Terminal Voltage :");