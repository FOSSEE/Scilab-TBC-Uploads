//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
IDSS=12*10^-3//IDSS=saturation drain current in Ampere when VGS(gate-to-source voltage)=0V
Vp=-4//Vp=pinch-off voltage
VDD=30//VDD=drain supply voltage
RL=5*10^3//RL=load resistance in ohms
Rs=600//Rs=resistance connected to source terminal in ohms
Rg=1.5*10^6//Rg=resistance connected to gate terminal in ohms
//By Shockley's equation
//IDS=IDSS*(1-(VGS/Vp))^2 where IDS=saturation drain current to be calculated for given value of VGS
//Substituting VGS=(-ID*Rs) we get ID=IDS
//ID=IDSS*(1+((ID*Rs)/Vp))^2
//ID=12*(1+((0.6*ID)/-4))^2 where ID is obtained in mA
//(0.27*ID^2)-(4.6*ID)+12=0.........(1)
ID1=(4.6+sqrt((4.6^2)-(48*0.27)))/(2*0.27)
format("v",5)
ID2=(4.6-sqrt((4.6^2)-(48*0.27)))/(2*0.27)//ID1,ID2 are the 2 roots of the above equation (1)
format("v",5)
disp("mA",ID1,"ID1=")
disp("mA",ID2,"ID2=")
if (ID1>(IDSS/10^-3)) then//IDSS is converted in terms of mA
    disp("mA",ID1,"As ID1>IDSS ,the value rejected is ID1=")
end
if (ID2>(IDSS/10^-3)) then//IDSS is converted in terms of mA
    disp("mA",ID2,"As ID2>IDSS ,the value rejected is ID2=")
end
disp("mA",ID2,"Therefore,the drain current is =")
ID=ID2*10^-3//converting ID2 in terms of Ampere
VDS=VDD-ID*(RL+Rs)//VDS=drain-to-source voltage
disp("V",VDS,"The value of drain-to-source voltage VDS is =")
VGS=-ID*Rs//VGS=gate-to-source voltage
disp("V",VGS,"The value of gate-to-source voltage VGS is=")
if(Vp<0 & VDS>(VGS-Vp))
    disp("As Vp=(-4)<VGS<0V and VDS=12V>(VGS-Vp),it is verified that the JFET is in the saturation region of the drain characteristics")
end
