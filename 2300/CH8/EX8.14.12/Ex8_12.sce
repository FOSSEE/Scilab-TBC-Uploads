//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
//For a self-bias circuit
VBE=0.7//VBE=base emitter voltage
b=100//b=dc current gain of the common emitter transistor
VCC=22//VCC=collector supply voltage
R1=82//R1=resistance in kilo ohms
R2=16//R2=resistance in kilo ohms
RL=2.2//RL=load resistance in kilo ohms
Re=0.750//Re=resistance in kilo ohms connected to the emitter terminal
//ICO is to be neglected
VT=(R2*VCC)/(R1+R2)//VT=Thevenin equivalent voltage
RT=(R1*R2)/(R1+R2)//RT=Thevenin equivalent resistance
//Applying Kirchhoff's voltage law to the base circuit
//(IB*(RT+Re))+(IC*Re)=VT-VBE
//IC=b*IB
IB=(VT-VBE)/(RT+Re+(b*Re))//IB=base current
IC=b*IB//IC=collector current
format("v",8)
//Applying Kirchhoff's voltage law to the collector circuit
//(IC*(RL+Re))+(IB*Re)+VCE=VCC
VCE=VCC-((IC*(RL+Re))+(IB*Re))//VCE=collector emitter voltage
format("v",5)
disp("The operating point is specified by")
disp("mA",IC,"IC=")
disp("V",VCE,"VCE=")
