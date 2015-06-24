//Exa4.14
clc;
clear;
close;
//given data
Vz=50;//in volts
VSmax=120;//in volts
VSmin=80;//in volts
RL=10;//in Kohm
Rs=5;//in Kohm
Vout=Vz;//in Volts
disp("Output voltage will be equal to Vz i.e "+string(Vz)+" Volts");
IL=Vout/RL;//in mAmpere
disp("The zener current will be maximum when input voltage is maximum i.e. 120V.");
ISmax=(VSmax-Vout)/Rs;//in mAmpere
Izmax=ISmax-IL;//in mA
disp(Izmax,"Maximum zener diode current in mA : ");
disp("The zener current will be minimum when input voltage is minimum i.e. 80V.");
Ismin=(VSmin-Vout)/Rs;//in mAmpere
Izmin=Ismin-IL;//in mA
disp(Izmin,"Minimum zener diode current in mA : ");