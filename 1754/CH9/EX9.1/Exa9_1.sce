//Exa 9.1
clc;
clear;
close;
//Given data :
VBB=20;//in volt
VB=0.7;//in volt(For Si)
ETA=0.6;//intrinsic stand off ratio
//Part (i)
StandOffVoltage=ETA*VBB;//in volt
disp(StandOffVoltage,"Stand Off Voltage in volts :");
//Part (ii)
VP=ETA*VBB+VB;//in volts
disp(VP,"Peak point Voltage in volts : ");