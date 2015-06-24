//Exa 8.8
clc;
clear;
close;
//given data
format('v',9);
P=10;//in Ohm
Q=80;//in Ohm
S2=3400;//in Ohm
S1=2400;//in Ohm
X=P*(S2-S1)/(P+Q);//in Ohm
LoopResistance=P*S2/Q;//in Ohm
ResistancePerKm=LoopResistance/10;//in Ohm
Distance=X/ResistancePerKm;//in Km
disp(Distance,"Distance of fault from testing end in Km : ");