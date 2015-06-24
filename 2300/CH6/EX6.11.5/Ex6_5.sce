//scilab 5.4.1
//Windows 7 operating system
//chapter 6 Diode Circuits
clc
clear
//For a full wave rectifier 
//L-type LC filter
f=50//f=line frequency in Hz
w=2*%pi*f
Vdc=10//Vdc=dc output voltage
Idc=100*10^-3//Idc=load current in Amperes
y=0.02//y=allowable ripple factor
//y=sqrt(2)/(12*(w^2)*L*C)
//Let L*C=a...............(1)
a=sqrt(2)/(y*12*(w^2))
RL=Vdc/Idc//RL=load resistance
//Lc=critical inductance 
//Lc=RL/(3*w)
//For line frequency of 50Hz,Lc=RL/(300*%pi)
//Lc=RL/950
Lc=RL/950
format("v",4)
L=0.1//Assumed inductance in henry
C=a/L//C=capacitance calculated from equation (1)
format("v",4)
L1=1//Assumed inductance in henry
C1=a/L1//C1=capacitance calculated from equation (1)
format("v",4)
Rb=950*L1//Rb=bleeder resistance for good voltage regulation
disp("The designed values of the components for a full wave rectifier with L-type LC filter are")
disp("ohm",RL,"The load resistance RL is =")
disp("H",Lc,"The critical inductance Lc is =")
disp("H",L,"The inductance L is=")
disp("µF",C/10^-6,"The capacitance C is")//C is converted in terms of microfarad
//In textbook 957µF is approximately taken as 600µF
disp("H",L1,"But if the inductance L designed is of the value =")
disp("µF",C1/10^-6,"the capacitance C will be of the value =")//C1 is converted in terms of microfarad
disp("So,a standard value of 50µF can be used in practice")
disp("ohm",Rb,"The bleeder resistance Rb for good voltage regulation is=")
disp("As Rb is much greater than RL,little power is wasted in Rb.This reflects the advantage of selecting L>Lc")


