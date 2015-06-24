//Exa4.15
clc;
clear;
close;
//given data
Vz=15;//in volts
Izk=6;//in mA
Vout=15;//in Volts
Vs=20;//in Volts
ILmin=10;//in mA
ILmax=20;//in mA
disp("the zener current will be minimum i.e. Izk = 6mA when load current is maximum i.e. ILmax = 20mA");
RS=(Vs-Vout)/(Izk+ILmax);//in ohm
disp("when the load current will decrease and become 10 mA, the zener current will increase and become 6+10 i.e. 16 mA. Thus the current through series resistance Rs will remain unchanged at 6+20 i.e. 26 mA. Thus voltage drop in series resistance Rs will remain constant. Consequently, the output voltage will also remain constant. ");