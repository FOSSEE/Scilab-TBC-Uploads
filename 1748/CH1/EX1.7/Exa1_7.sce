//Exa 1.7
clc;
clear;
close;
//given data
format('v',7);
NoOfPhase=3;//no of phase
Eph=3300/sqrt(3);//in Volts
f=50;//in Hz
Poles=12;//No. of poles
StatorSlots=144//No. of stator slots
SlotsPerPhase=StatorSlots/NoOfPhase;//no. of slots/phase
Conductors=5;//per slot
ConductorsPerphase=SlotsPerPhase*Conductors;//Conductors/Phase
S=ConductorsPerphase;//Conductors/phase
SlotsPerPolePerPhase=SlotsPerPhase/Poles;//no. of slots/phase
Kf=1.11;//Form Factor
Kb=0.96;//Breadth Factor
Kp=1;//For concentric winding
fi=Eph/(2*Kf*Kb*Kp*S*f);//in weber
disp(fi,"The Flux per pole in weber : ");