//Exa 1.23
clc;
clear;
close;
//given data
Vo=5;//in volts
BETAac=150;//unitless
BETAdc=150;//unitless
VT=25;//in mvolts
VCC=10;//in volts
VD=0.7;//in volts
R1=2.7;//in kohm
R2=1.5;//in kohm
// part (i) //
disp("we have IC1/IC2=exp((VBE1-VBE2)/VT)");
disp("Writing KVL for the loop containing both emitter base junction yields");
disp("VBE1=VBE2=VBE");
disp("Hence IC1/IC2=1");
disp("IC1=IC2=IC");
IR=(VCC-VD)/R1;//in mA
disp("Writing KCL at the junction of bases of transistors Q1 and Q2 gives : ");
disp("IC+2*IB+VBE/R2=IR")
disp("IB=IC/BETAac");
IC=(IR-VD/R2)/(1+2/BETAac);//in mA
IC1=IC;//in mA
IC2=IC;//in mA
RC=(VCC-Vo)/IC;//in kohm
disp(IC1,"IC1 in mA is : ");
disp(IC2,"IC2 in mA is : ");
disp(RC,"RC in kohm is : ");