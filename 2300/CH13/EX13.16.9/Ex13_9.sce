//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
VDD=20//VDD=drain supply voltage
IDS=0.9//IDS=drain saturation current in terms of mA
Vp=-3//Vp=pinch-off voltage
IDSS=8//IDSS=saturation drain current in mA when VGS(gate-to-source voltage)=0V
//By Shockley's equation
//IDS=IDSS*(1-(VGS/Vp))^2
VGS=Vp*(1-sqrt(IDS/IDSS))//VGS=gate-to-source voltage
disp("V",VGS,"The gate-to-source voltage VGS is=")
//gm=(dIDS/dVGS)|VDS=constant where gm=transconductance
gm=-((2*IDSS)/Vp)*(1-(VGS/Vp))
format("v",5)
disp("mS",gm,"The value of transconductance is=")

