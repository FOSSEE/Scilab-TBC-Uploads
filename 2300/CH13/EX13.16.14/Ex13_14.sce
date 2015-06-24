//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
//For n-channel MOSFET operating in the depletion mode
VDD=18//VDD=drain supply voltage
VGS=0//VGS=gate-to-source voltage
RL=600//RL=load resistance in ohms
IDSS=18//IDSS=drain saturation current in mA for gate-to-source voltage (VGS)=0V
Vp=-5//Vp=pinch-off voltage
//Assuming that the operation is in the active region
//ID=IDS=IDSS*(1-(VGS/Vp))^2
//ID=(IDSS/Vp^2)(VGS-Vp)^2
K=IDSS/(Vp^2)
disp("mA/V^2",K,"The value of K is =")
ID=IDSS//ID=drain current 
disp("mA",ID,"Since VGS=0,the value of ID=IDSS is=")
VDS=VDD-(ID*(RL/10^3))//VDS=drain-to-source voltage and also converting RL in terms of kilo ohm
disp("V",VDS,"The value of VDS is =")
disp("V",Vp,"Pinch off voltage Vp is =")
disp("V",VGS,"Gate to source voltage VGS is =")
if (VDS>(VGS-Vp)) then
    disp("As VDS>(VGS-Vp),(i.e.7.5>(0-(-5))),the MOSFET is actually in the active region ")
end

