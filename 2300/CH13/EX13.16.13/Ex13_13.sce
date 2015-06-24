//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
//For n-channel enhancement mode MOSFET operating in active region
VT=2//VT=Threshold voltage
K=0.5//K=(IDSS/(Vp^2)) in terms of mA/V^2
VDD=15//VDD=drain supply voltage
RL=1//RL=load resistance in kilo ohm
R1=200*10^3//R1=resistance in the voltage divider network in terms of ohms
R2=100*10^3//R2=resistance in the voltage divider network in terms of ohms
VGS=(R2/(R1+R2))*VDD//VGS=gate-to-source voltage
disp("V",VT,"Threshold voltage is =")
disp("V",VGS,"The gate-to-source voltage VGS is =")
ID=K*(VGS-VT)^2//ID=drain current in mA
disp("mA",ID,"The value of drain current ID is =")
VDS=VDD-(ID*RL)//VDS=drain-to-source voltage
disp("V",VDS,"The value of drain-to-source voltage VDS is=")
if (VDS>(VGS-VT)) then
    disp("As VDS>(VGS-VT),(i.e. 10.5>(5-2)),the operation is indeed in the active region ")
end
