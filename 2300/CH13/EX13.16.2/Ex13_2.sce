//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
VGS=-1.5//VGS=gate-to-source voltage of a JFET
IDsat=5*10^-3//IDsat=drain saturation current in Ampere
RS=(abs(VGS))/(abs(IDsat))//RS=resistance to be calculated=|VGS| / |IDsat|
disp("ohm",RS,"Resistance to be calculated is =")
