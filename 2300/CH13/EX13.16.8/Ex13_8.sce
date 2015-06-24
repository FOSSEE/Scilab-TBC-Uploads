//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
//For a n-channel JFET
IDSS=10*10^-3//IDSS=saturation drain current in Ampere when VGS(gate-to-source voltage)=0V
Vp=(-4)//Vp=pinch-off voltage
VGS=(-2.5)//VGS=gate-to-source voltage
//By Shockley's equation
IDS=IDSS*(1-(VGS/Vp))^2//IDS=saturation drain current to be calculated for given value of VGS
format("v",5)
disp("mA",IDS/10^-3,"The drain current for given value of VGS is=")//converting IDS in terms of mA
VDSmin=VGS-Vp//VDSmin=minimum value of drain-to-source voltage for the onset of the saturation region
format("v",5)
disp("V",VDSmin,"The minimum value of VDS for saturation is=")
