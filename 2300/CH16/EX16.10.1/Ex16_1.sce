//scilab 5.4.1
//Windows 7 operating system
//chapter 16 Special Devices
clc
clear
Vp=15//Vp=firing voltage of a unijunction transistor in Volts
VBB=40//VBB=source voltage in Volts
n=(Vp/VBB)//n=intrinsic stand-off ratio
disp(n,"The intrinsic stand-off ratio is ")
R=50*(10^3)//R=resistance in ohms
C=2000*(10^-12)//c=capacitance in farad
T=(R*C*log(1/(1-n)))*(10^6)//T=time period of the sawtooth voltage across C
format("v",7)
disp("microseconds",T,"The time period is ")
