//Exa 1.26
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VT=25;//in mvolts
VEE=10;//in volts
VCC=10;//in volts
VBE=0.7;//in volts
VEB=-0.7;//in volts
RC2=2.7;//in kohm
RC1=2.7;//in kohm
RC3=1.5;//in kohm
RC4=1.5;//in kohm
RE1=5;//in kohm
RE2=10;//in kohm
RE3=10;//in kohm
IE1=(VEE-VBE)/(2*RE1);//in mA
IC1=IE1;
//as Q1 and Q2 are identical
IC2=IC1;
VC1=VCC-RC1*IC1;
VE1=-0.7;//in Volts
VE2=0.7;//in Volts
VCE1=VC1-VE1;
VCE2=VCE1;
disp("Writing KVL for the base emitter loop of tarnsistor Q3 will determine IC3 as :");
disp("VCC-RC2*IC2-VBE3-RE3*2*IE3+VEE=0")
IE3=(VCC-RC2*IC2-VBE+VEE)/(2*RE3);//in mA 
IE4=IE3;//in mA
VC3=VCC-RC3*IE3;//in Volts
VC4=VC3;//in Volts
VE3=VC1-VBE;//in Volts
VCE3=VC3-VE3;//in Volts
VCE4=VCE3;//in Volts
disp("Thus operating point for Q1 & Q2 becomes : ")
disp(IC1,"ICQ in mA is : ");disp(VCE1,"VCEQ in volts is : ")
disp("And operating point for Q3 & Q4 becomes : ")
disp(IE3,"ICQ in mA is : ");disp(VCE3,"VCEQ in volts is : ")

re1=VT/IC1;//in ohm
re2=re1;//in ohm
re3=VT/IE3;//in ohm
re4=re3;//in ohm
Ri2=2*BETAac*re3;//in ohm
Ri2=Ri2*10^-3;//in kohm
Ad1=((RC1*Ri2)/(RC1+Ri2))/(re1*10^-3);
Ad2=RC4/(2*re4*10^-3);
Ad=Ad1*Ad2;
disp(Ad,"Overall voltage gain is : ");
Ri1=2*BETAac*re1;//in ohm
Ri1=Ri1/1000;//in kohm
disp(Ri1,"Input resistance of the cascaded differential amplifier in kohm is : ");
Ro2=RC4;//in kohm
disp(Ro2,"Output resistance of the cascaded differential amplifier in kohm is : ");