//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
ID=5//ID=saturation drain current in terms of mA in an n-channel enhancement mode MOSFET
VGS=8//VGS=gate-to-source voltage
VT=4//VT=Threshold voltage
VGS2=10//VGS2=gate-to-source voltage for which saturation drain current is to be calculated
//ID=K*(VGS-VT)^2 where K=(IDSS/(Vp^2)) and Vp=pinch-off voltage ,IDSS=drain saturation current for VGS=0 V
K=ID/((VGS-VT)^2)
ID1=K*(VGS2-VT)^2//ID1=The saturation drain current for gate-source voltage of 10V i e VGS2
disp("mA",ID1,"The saturation drain current for gate-source voltage of 10V is =")
