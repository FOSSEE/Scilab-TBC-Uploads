//scilab 5.4.1
//Windows 7 operating system
//chapter 7 Junction Transistor Characteristics
clc
clear
disp("As the base is forward biased,transistor is not cut off.")
disp("Assuming the transistor in active region ")
VBB=5//VBB=base bias voltage
VBE=0.7//VBE=voltage between base and emitter terminal
RB=220//RB=base circuit resistor in kilo ohms
IB=(VBB-VBE)/RB//IB=base current in mA(By applying Kirchhoff's voltage law)
format("v",7)
disp("mA",IB,"IB=")
disp("Ico<<IB")//Ico=reverse saturation current and is given as 22nA
B=100//B=dc current gain
IC=B*IB
format("v",5)
disp("mA",IC,"IC=")
Vcc=12//Vcc=collector supply voltage
Rc=3.3//Rc=collector circuit resistor in kilo ohms
VCB=Vcc-(IC*Rc)-VBE//VCB=voltage between collector and base terminal (by applying Kirchhoff's voltage law to the collector circuit)
disp("V",VCB,"VCB=")
disp("A positive value of VCB implies that for n-p-n transistor,the collector junction is reverse biased and hence the transistor is actually in active region")
IE=-(IB+IC)//IE=emitter current
disp("mA",IE,"IE=")
format("v",7)
disp("The negative sign indicates that IE actually flows in the opposite direction.")
disp("IB and IC do not depend on the collector circuit resistance Rc.So if it is increased, at one stage VCB becomes negative and transistor goes into saturation region ")
