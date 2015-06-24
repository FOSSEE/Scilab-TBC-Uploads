//Exa4.20
clc;
clear;
close;
//given data
VRL=10;//in Volts
Vi=50;//in Volts
R=1;//in Kohm
Vz=10;//in Volts
VL=Vz;//in Volts
Izm=32;//in mA
IR=(Vi-VL)/R;//in mA
disp("Load current IL will be maximum when Iz = 0 ");
Izmin=0;//in mA
ILmax=IR-Izmin;//in mA
disp(ILmax,"Maximum load current in mA : ");
RLmin=VL/ILmax;//in Ohm
disp("Load current IL will be minimum when Iz = maximum i.e. 32 mA ");
Izmax=32;//in mA
ILmin=IR-Izmax;//in mA
disp(ILmin,"Minimum load current in mA : ");
VL=Vz;//in Volts
RLmax=VL/ILmin;//in Ohm
disp("Hence range of RL and IL are as follows :");
disp("Range of RL in Kohm : From "+string(RLmin)+" to "+string(RLmax));
disp("Range of IL in mA : From "+string(ILmin)+" to "+string(ILmax));