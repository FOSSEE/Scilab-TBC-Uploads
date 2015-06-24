//Exa 7.5
clc;
clear;
close;
//Given data : 
format('v',6);
VA=400;//in volt
r=0.03;//in ohm/km
r=0.03/1000;//in ohm/m
RAB=r*500*2;//in ohm
RBC=r*300*2;//in ohm
RAB=r*700*2;//in ohm
RAB=r*500*2;//in ohm
//VA-VB=VAC+VCD+VDE+VEF+VFB;//in volt
IA=(17.4)/(0.09);//in Ampere
VAB=(RAB)*IA;//in volt
VB=VA-VAB;//in volt
disp(VB,"Voltage at B(in volts) :");
VBC=(RBC)*(IA-150);//in volt
VC=VB-VBC;//in volt
disp(VC,"Voltage at C(in volts) :");
IBC=IA-150;//in A
disp(IBC,"Current in section BC(in A) :");
//Note : answer of VB is wrong in the book.