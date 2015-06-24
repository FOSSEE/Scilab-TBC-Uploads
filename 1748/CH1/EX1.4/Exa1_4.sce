//Exa 1.4
clc;
clear;
close;
//given data
format('v',8);
NoOfPhase=3;//no of phase
P=16;//No. of pole alternator
Slots=144;//No. of slots
Conductors=10;//per slot
fi=0.03;//in Weber
N=375;//machine speed in rpm
f=P*N/120;//in Hz
SlotsPerPole=Slots/P;//unitless
m=Slots/(P*NoOfPhase);//unitless
Beta=180/(SlotsPerPole);//in Degree
Kd=sind(m*Beta/2)/(m*sind(Beta/2));//unitless
TotalConductors=Conductors*Slots;//no. of conductors
TotalConductorsPerPhase=Conductors*Slots/NoOfPhase;//no. of conductors/phase
TurnsPerPhase=TotalConductorsPerPhase/2;//No. of turns per phase
EMFPerPhase=4.44*Kd*fi*f*TurnsPerPhase;//in Volt
LineVoltage=sqrt(3)*EMFPerPhase;//in Volt
disp(f,"Frequency in Hz : ");
disp(EMFPerPhase,"Phase Electromotive force in Volt : ");
disp(LineVoltage,"Line Electromotive force in Volt : ");