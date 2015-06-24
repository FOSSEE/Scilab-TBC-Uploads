//scilab 5.4.1
//Windows 7 operating system
//chapter 7 Junction Transistor Characteristics
clc
clear
b=100//b=forward current transfer ratio or dc current gain
Vz=4//Vz=Zener diode voltage
IL=2//IL=load current in mA
Iz=5//Iz=Zener current in mA
VCC=12//VCC=collector supply voltage
VEB1=0.7
VEB2=VEB1//VEB1,VEB2=emitter-to-base voltage for both transistors Q1 and Q2 respectively
//Since IL is the collector current of transistor Q1
IB=IL/b//IB=base current of transistor Q1
IE=IB+IL//IE=emitter current of transistor Q1
VR1=VCC-VEB2-Vz//VR1=voltage drop across resistor R1
R1=VR1/(IB+Iz)
format("v",5)
disp("kilo ohm",R1,"The resistance R1 is =")
VR2=VEB2+Vz-VEB1//VR2=voltage drop across resistor R2
R2=VR2/IE
format("v",5)
disp("kilo ohm",R2,"The resistance R2 is =")
//VBC=VCC-VR2-VEB1-(IL*RL) where VBC=base-collector voltage drop for transistor Q1
//VBC=7.3-(2*RL) where RL=load resistance for transistor Q1 in terms of kilo ohm
disp("For Q1 to remain in the active region,VBC≥0,i.e.")
disp("RL≤(7.3/2) kilo ohm")
disp("RL≤3.65 kilo ohm")
disp("So the range of RL for Q1 to remain in the active region is 0≤RL≤3.65 kilo ohm")
