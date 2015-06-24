//example 8.9
clc;funcprot(0);
//Initialization of Variable
V=220;//line voltage
P=1.3;//kW
R=15;//ohm
pi=3.1428;
//calculation
Vr=round((P*1000*R)^.5);
disp(Vr,"rms voltage in V:")
D=Vr/V;
Vr=V*2^.5*(.5*(pi-1.710)+sin(196*pi/180)/4)^.5/pi^.5;
disp(Vr,"double checked value of rms voltage in V:")
clear()
