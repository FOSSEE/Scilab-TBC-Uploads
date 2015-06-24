//Exa4.19
clc;
clear;
close;
//given data
RL=120;//in ohm
Izmin=20;//in mA
Izmax=200;//in mA
VL=12;//in Volts
VDCmin=15;//in Volts
VDCmax=19.5;//in Volts
Vz=12;//in Volts
IL=VL/RL;//in Ampere
IL=IL*1000;//in mAmpere
//For VDCmin = 15 volts
VSmin=VDCmin-Vz;//in Volts
//For VDCmax = 19.5 volts
VSmax=VDCmax-Vz;//in Volts
ISmin=Izmin+IL;//in mA
Ri=VSmin/ISmin;//in Kohm
Ri=Ri*10^3;//in ohm
disp(Ri,"The resistance Ri in ohm : ");