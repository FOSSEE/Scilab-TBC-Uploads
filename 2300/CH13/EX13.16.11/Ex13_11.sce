//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
IDSS=10*10^-3//IDSS=saturation drain current in Ampere when VGS(gate-to-source voltage)=0V
Vp=-5//Vp=pinch-off voltage
VDD=24//VDD=drain supply voltage
VDS=8//VDS=drain-to-source voltage
ID=4*10^-3//ID=drain current in Ampere
R1=2*10^6//R1=resistance in the voltage divider network in ohms
R2=1*10^6//R2=resistance in the voltage divider network in ohms
VT=(R2/(R1+R2))*VDD//VT=Thevenin voltage
//By Shockley's equation
//ID=IDS=IDSS*(1-(VGS/Vp))^2
VGS=Vp*(1-sqrt(ID/IDSS))//VGS=gate-to-source voltage
//VGS=VT-(ID*Rs) where Rs=resistance connected at the source terminal
Rs=(VT-VGS)/ID
disp("kilo ohm",Rs/10^3,"The value of Rs =")//converting Rs in terms of kilo-ohm
Rch=VDS/ID//Rch=channel resistance at the Q-point
disp("kilo ohm",Rch/10^3,"The channel resistance at the Q-point is=")//converting Rch in terms of kilo-ohm
