//Exa 1.6
clc;
clear;
close;
//Given data
Vmin=15;//Minimum input voltage in volt
VZ=6.8;//Voltage across zener in volt
Vo=VZ;//output voltage in volt
Vsr1=Vmin-Vo;//Voltage aross series resistance in volt
disp("If R is the series esistance, Total current in series resistance in Ampere : I=Vsr/R=8.2/R ");
ILmin=5;//in mA
disp("current in zener diode in Ampere :IZ=I-IL=(8.2/R-IL*10-3)          eqn(1)");
Vmax=20;//mximum output voltage
Vo=VZ;//output voltage in volt
Vsr2=Vmax-Vo;//Voltage aross series resistance in volt
disp("Current in series resistance circuit in Ampere : I=Vsr/R");
ILmax=15;//in mA
disp("current in zener diode in Ampere :IZ=I-IL=(Rs/R-IL*10-3)          eqn(2)")
disp("For Zener diode to work as voltage regulator,(1) and (2) must be same.");
disp("(8.2/R-IL*10-3)=(13.2/R-IL*10-3)")
R=(Vsr2-Vsr1)/(ILmax*10^-3-ILmin*10^-3);//in Ohm
disp(R,"Required value of Series Resistor in ohm : ");