//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
IDSS=10*10^-3//IDSS=saturation drain current in Ampere when VGS(gate-to-source voltage)=0V
Vp=-2//Vp=pinch-off voltage
VDD=20//VDD=drain supply voltage
RL=1*10^3//RL=load resistance in ohms
Rs=2*1000//Rs=resistance connected to source terminal in ohms
R1=12*10^6//R1=resistance in the voltage divider network in ohms
R2=8*10^6//R2=resistance in the voltage divider network in ohms
VT=(R2/(R1+R2))*VDD//VT=Thevenin voltage
//VGS=VT-(ID*Rs)
//By Shockley's equation
//IDS=IDSS*(1-(VGS/Vp))^2 where IDS=saturation drain current to be calculated for given value of VGS
//Substituting VGS=(VGS-ID*Rs) we get ID=IDS
//(10*ID^2)-(101*ID)+250=0.........(1)where ID is obtained in mA
ID1=(101+sqrt((101^2)-(40*250)))/(2*10)
format("v",5)
ID2=(101-sqrt((101^2)-(40*250)))/(2*10)//ID1,ID2 are the 2 roots of the above equation (1)
format("v",5)
disp("mA",ID1,"ID1=")
disp("mA",ID2,"ID2=")
//For ID1
VGS=VT-(ID1*Rs)//VGS=gate-to-source voltage calculated for ID1
if (Vp>VGS) then
    disp("mA",ID1,"As Vp>(VGS calculated using ID1), the value rejected is ID1=")
end
disp("mA",ID2,"Therefore,the drain current is =")
ID=ID2*10^-3//converting ID2 in terms of Amperes
VGS=VT-(ID*Rs)//VGS=gate-to-source voltage
disp("V",VGS,"VGS=")
VDS=VDD-(ID*(RL+Rs))//VDS=drain-to-source voltage
format("v",2)
disp("V",VDS,"VDS=")
if(Vp<VGS & VDS>(VGS-Vp))
    disp("As Vp=(-2)<(VGS=-0.68V) and VDS=7V>(VGS-Vp),it is checked that the JFET operates in the saturation region ")
end
