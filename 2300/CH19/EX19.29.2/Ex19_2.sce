//scilab 5.4.1
//Windows 7 operating system
//chapter 19 VLSI Technology and Circuits
clc
clear
ID=50*10^-6//ID=drain current in amperes
k=25*10^-6//k=ue/D in A/V^2
VDEP=3
l=(k*((-VDEP)^2))/(2*ID)//l=(L/W)=aspect ratio of the pull-up
disp(l,"Pull-up (L/W)=")
VGS=5//VGS=gate-to-source voltage
VTH=1//VTH=threshold voltage
VDs=4.75//VDs=the drain source voltage of the depletion mode pull-up in saturation
VDD=5//VDD=drain supply voltage of given NMOS inverter
//L/W=(k*(VGS-VTH)*VDS)/ID where L/W=pull down aspect ratio
l1=(k*(VGS-VTH)*(VDD-VDs))/ID//l1=L/W
disp(l1,"Pull-down (L/W)=")
