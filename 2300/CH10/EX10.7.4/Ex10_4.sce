//scilab 5.4.1
//windows 7 operating system
//chapter 10:Feedback In Amplifiers
clc
clear
B=50//B=reverse transmission factor for silicon transistor T1
VB=((640)*10)/(640+360)//calculating voltage at point B i.e VB by applying voltage divider rule in the given circuit
format("v",4)
disp("V",VB,"VB=")
VBE=VB-5.6//VBE=base emitter voltage drop for silicon transistors T1 and T2 both
disp("V",VBE,"VBE=")
VA=10-0.8//VA=voltage at point A in the given circuit
disp("V",VA,"VA=")
I1=10/(360+640)//I1=current through resistor of 360 ohm
format("v",5)
disp("A",I1,"I1=")
IE1=I1+1//IE1=emitter current of transistor T1
format("v",5)
disp("A",IE1,"IE1=")
//IC1=-IB1+IE1
IB1=IE1/(B+1)//IB1=base current of transistor T1
disp("mA",IB1/10^-3,"IB1=")//IB1 is converted in terms of mA
I2=(20-VA)/300//I2=current through resistor of 300 ohm
disp("mA",I2/10^-3,"I2=")//I2 is converted in terms of mA
IC2=I2-IB1//IC2=collector current of transistor T2
disp("mA",IC2/10^-3,"IC2=")//IC2 is converted in terms of mA
//Assuming the base current IB2 of transistor T2 is negligibly small
IE2=IC2//IE2=emitter current of transistor T2
disp("mA",IE2/10^-3,"IE2=")//IE2 is converted in terms of mA
I3=(20-5.6)/1000//I3=current through 1000 ohm resistor
disp("mA",I3/10^-3,"I3=")//I3 is converted in terms of mA
IZ=I3+IE2//IZ=current through zener diode
disp("mA",IZ/10^-3,"IZ=")//IZ is converted in terms of mA
VCE=20-10//VCE=collector emitter voltage drop for transistor T1
disp("V",VCE,"VCE=")
IC1=B*IB1
P=VCE*IC1//P=power dissipation in transistor T1
disp("W",P,"P=")
