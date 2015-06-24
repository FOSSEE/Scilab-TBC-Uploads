//Exa 8.9
clc;
clear;
close;
//given data
format('v',9);
Resistance=1.6;//in ohm/Km
l=1000;//in meter
PbyQ=3;//unitless
PplusQbyQ=4;//unitless
LoopResistance=(Resistance/1000)*2*l;//in Ohm
X=(1/PplusQbyQ)*LoopResistance;//in Ohm
Distance=X/(Resistance/1000);//in meter
disp(Distance,"Distance of Fault from testing end in meters : ");