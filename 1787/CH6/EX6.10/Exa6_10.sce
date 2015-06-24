//Exa 6.10
clc;
clear;
close;
//given data
VCC=10;//in volt
RL=800;//in ohm
VL=0.8;//in volt
alfa=0.96;//unitless
//VR=IC*RL
VCE=VCC-VL;//in Volt
disp(VCE,"Collector-emitter Voltage in volts : ");
IC=VL*1000/RL;//in mA
Beta=alfa/(1-alfa);//unitless
IB=IC/Beta;//in mA
disp(IB*1000,"Base current in uA : ");