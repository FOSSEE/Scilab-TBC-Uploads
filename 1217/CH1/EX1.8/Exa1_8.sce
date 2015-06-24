//Exa 1.8
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VBE3=0.715;//in volts
VD1=0.715;//in Volts
VZ=6.2;//in Volts
VT=25;//in mVolts
IZt=41;//in mA 
VCC=10;//in Volts
VEE=-10;//in Volts
RC1=2.7;//in kohm
RC=4.7;//in kohm
//Part (a)
VB3=VEE+VZ+VD1;//in volts
VE3=VB3-VBE3
IE3=(VE3-VEE)/RC1;//in mA
disp("As the differential amplifier is symmetrical, ICQ1=IE1=ICQ2=IE2");
IE2=IE3/2;//in mA
ICQ1=IE2;//in mA
ICQ2=IE2;//in mA
IE1=IE2;//in mA
VCEQ=VCC+VBE3-RC*ICQ1// formula for VCEQ 
disp("Hence operating point for Q1 and Q2 are : ")
disp(VCEQ,"VCEQ in volts is :")
disp(ICQ1,"ICQ in mA is :")
disp("and the operating point for Q3 will be : ")
VCE3=-VBE3-VE3;//in Volts
disp(VCE3,"VCE3 in volts is :")
IC3=IE3;//in mA
disp(IE3,"IE3 in mA is :")
//Part (b)
re=(2*VT)/IC3;//in ohm
Ad=(RC*1000)/re;//unitless
disp(Ad,"Differential voltage gain is  ")
//Part (c)
Ri=2*BETAac*re;//in ohm
disp(Ri/1000,"Input resistance in kohm is : ")
//Answer in the book is not as much accurate as calculated by Scilab