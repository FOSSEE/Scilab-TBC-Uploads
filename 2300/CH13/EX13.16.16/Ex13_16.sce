//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
//In a FET used in a CS amplifier
IDSS=4//IDSS=drain saturation current in mA for gate-to-source voltage (VGS)=0V
Vp=-3//Vp=pinch-off voltage
RL=10//RL=load resistance in kilo ohms
VGS=-0.7//VGS=gate-to-source voltage
gmo=-(2*IDSS)/Vp//gmo=transconductance in A/V of a JFET when VGS=0V
gm=gmo*(1-(VGS/Vp))//gm=transconductance
AV=-gm*RL//AV=the small signal voltage gain
disp(AV,"The small signal voltage gain is =")
//Decimal term in the answer displayed in textbook is incorrect as 2.04*10=20.4 and not 20.04.
