//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
//For n-channel JFET 
IDSS=12*10^-3//IDSS=saturation drain current in Ampere when VGS(gate-to-source voltage)=0V
Vp=-4//Vp=pinch-off voltage
VGS=-2//VGS=gate-to-source voltage
//By Shockley's equation
IDS=IDSS*(1-(VGS/Vp))^2//IDS=saturation drain current to be calculated for given value of VGS
disp("mA",IDS/10^-3,"The drain current for given value of VGS is=")
gmo=4*10^-3//gmo=transconductance in A/V of a JFET when VGS=0V
//gmo=-(2*IDSS)/Vp
Vp=-(2*IDSS)/gmo//Vp=pinch-off voltage to be calculated for given value of transconductance
disp("V",Vp,"The pinch-off voltage for given value of gmo is =")
