//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
//In a class B push pull circuit
//Transformer winding resistances are to be ignored
n=3//n=primary-to-secondary turns ratio of a transformer
RL=9//RL=load resistance in ohms
VCC=15//VCC=collector supply voltage
RL1=((n/2)^2)*RL//RL1=reflected load resistance for one transistor
Pactot=(VCC^2)/(2*RL1)//Pactot=maximum output power
format("v",5)
disp("W",Pactot,"The maximum output power is =")
Pstot=(2*VCC^2)/(%pi*RL1)//Pstot=the maximum dc power supplied to the two transistors
format("v",5)
disp("W",Pstot,"The maximum dc power supplied is =")
n=(Pactot/Pstot)*100//n=efficiency
format("v",5)
disp("%",n,"The efficiency is =")
