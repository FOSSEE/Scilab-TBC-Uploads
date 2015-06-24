//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
VCQ=6//VCQ=quiescent collector voltage
ICQ=50*10^-3//ICQ=quiescent collector current
VCmin=1
VCmax=11//VCmin,VCmax=output signal voltage variation
ICmin=10*10^-3
ICmax=90*10^-3//ICmin,ICmax=output signal current variation in Ampere
Ps=VCQ*ICQ//Ps=dc input power to the transistor
disp("W",Ps,"The dc input power is =")
Pac=(1/8)*(ICmax-ICmin)*(VCmax-VCmin)//Pac=ac output power delivered to the load
disp("W",Pac,"The ac output power is =")
PT=(VCQ*ICQ)-Pac//PT=the collector dissipation
disp("W",PT,"The collector dissipation is =")
n=(Pac/Ps)*100//n=the efficiency of the active device
format("v",5)
disp("%",n,"The efficiency is =")
