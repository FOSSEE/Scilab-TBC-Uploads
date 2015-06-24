//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
VGS1=-1
VGS2=-1.5//VGS1,VGS2=change in VGS(gate-to-source voltage) from VGS1 to VGS2 keeping VDS(drain-to-source voltage) constant
ID1=7*10^-3
ID2=5*10^-3//ID1,ID2=change in ID(drain current) in Ampere from ID1 to ID2
//gm=(id/vgs)|VDS=constant where gm=transconductance
id=ID1-ID2
vgs=VGS1-VGS2
gm=id/vgs
disp("mA/V",gm*10^3,"The transconductance of the FET is =")
rd=200*10^3//rd=ac drain resistance in ohms
u=rd*gm//u=amplification factor
disp(u,"The amplification factor of the FET is =")
