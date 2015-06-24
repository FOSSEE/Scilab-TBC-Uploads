//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
VCC=12//VCC=collector supply voltage
a=0.98//a=dc current gain of the common base transistor
VBE=0.7//VBE=base emitter voltage
IE=2//IE=emitter current in mA
//Ico is to be neglected
b=a/(1-a)//b=dc current gain of the common emitter transistor
//IC=b*IB where IC=collector current and IB=base current
//IE=IC+IB
//IE=(b+1)*IB
IB=IE/(b+1)
IC=b*IB
RE=0.1//RE=resistance in kilo ohms connected to the emitter terminal
R2=20//R2=resistance in kilo ohms
RC=3.3//RC=resistance in kilo ohms connected to the collector terminal
//Let I be the current in the resistance R2
//Applying Kirchhoff's voltage law in the base-emitter circuit
//VBE+(RE*IE)=R2*I
I=(1/R2)*(VBE+(RE*IE))
//Applying Kirchhoff's voltage law
//((I+IB+IC)*RC)+((I+IB)*R1)+(I*R2)=VCC
R1=(VCC-((I+IB+IC)*RC)-(I*R2))/(I+IB)
format("v",5)
disp("kilo ohm",R1,"The resistance R1 is =")

