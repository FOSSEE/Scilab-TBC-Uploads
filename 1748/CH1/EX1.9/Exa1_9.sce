//Exa 1.9
clc;
clear;
close;
//given data
format('v',6);
RatedPower=100;//in KVA
RatedPower=100*1000;//in VA
VL=1040;//in Volt
Phase=3;//Machine phase
If=40;//in Ampere
Isc=200;//in Ampere
EL=1040;//in Volt
Eph=EL/sqrt(3);//in Volt
Zs=Eph/Isc;//in Ohm
Rs=0.2;//in Ohm
Xs=sqrt(Zs^2-Rs^2);//in Ohm
IL=19.25;//in Ampere
V=3000/sqrt(3);//in Volt
//At 0.8 power factor lagging
IRa=IL*0.2;//in Volt
IXs=IL*Xs;//in Volt
Vsin_fi=V*0.6;//in Volt
Vcos_fi=V*0.8;//in Volt
Eo=sqrt((Vcos_fi+IRa)^2+(Vsin_fi+IXs)^2);//in Volts
Regulation=((Eo-V)/V)*100;//in %
disp(Regulation,"Full load perentage regulation at a power factor of 0.8 lagging : ");

//At 0.8 power factor leading
Eo=sqrt((Vcos_fi+IRa)^2+(Vsin_fi-IXs)^2);//in Volts
Regulation=((Eo-V)/V)*100;//in %
disp(Regulation,"Full load perentage regulation at a power factor of 0.8 leading : ");
disp("Negative regulation due to leading power factor.");