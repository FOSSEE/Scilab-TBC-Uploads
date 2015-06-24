//Exa 1.10
clc;
clear;
close;
//given data
format('v',6);
RatedPower=50;//in KVA
RatedPower=50*1000;//in VA
VL=173;//in Volts
Ra=0.1;//in Ohm
VP=VL/sqrt(3);//in Volts
disp("Some exciting curent on short circuit produces a current of 100 A.");
OC_PhaseVoltage=100;//in Volt
SC_Current=100;//in Ampere
Zs=OC_PhaseVoltage/SC_Current;//n ohm
Xs=sqrt(Zs^2-Ra^2);//in Ohm
disp(Xs,"Impedence of the alternator in Ohm : ");
V=400;//in Volts
I_FL=RatedPower/(sqrt(3)*V);//in Ampere
V=400/sqrt(3);//in Volts
Eo=sqrt((V+I_FL*Ra)^2+(I_FL*Xs)^2);//in Volts
Regulation=(Eo-V)*100/V;//in %
disp(Regulation,"Regulation at U.P.F. in % :");