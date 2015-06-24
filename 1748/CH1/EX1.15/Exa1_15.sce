//Exa 1.15
clc;
clear;
close;
//given data
format('v',7);
OutputPower=1200;//in KVA
OutputPower=1200*1000;//in VA
V=3300;//in Volt
Ra=0.25;//in Ohm
//Formula : outputPower=sqrt(3)*VL*IL
IL=OutputPower/(sqrt(3)*V);//in Ampere
Ia=IL;//in Ampere
VPerPhase=V/sqrt(3);//in Volts
OC_Voltage=1100;//in Volt
SC_Current=200;//in Ampere
Zs=OC_Voltage/(sqrt(3)*SC_Current);//in ohmRa
Xs=sqrt(Zs^2-Ra^2);//in Ohm
//formula : Induced EMF, E=sqrt((V*cos_fi+Ia*Ra)^2+(V*sin_fi+Ia*Xs)^2)

//Part (a)  : For lagging pf load
cos_fi=0.8;//Unitless
sin_fi=0.6;//Unitless
E=sqrt((VPerPhase*cos_fi+Ia*Ra)^2+(VPerPhase*sin_fi+Ia*Xs)^2);
Regulation=(E-VPerPhase)*100/VPerPhase;//in %
disp(Regulation,"Regulation at U.P.F. in % :");

//Part (b)  : For leading pf load
cos_fi=0.8;//Unitless
sin_fi=0.6;//Unitless
E=sqrt((VPerPhase*cos_fi+Ia*Ra)^2+(VPerPhase*sin_fi-Ia*Xs)^2)
Regulation=(E-VPerPhase)*100/VPerPhase;//in %
disp(Regulation,"Regulation at 0.71 pf lagging in % :");
//Note: For leading power factor load, the regulation s negative. 