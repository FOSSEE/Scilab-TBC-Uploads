//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
//For two identical transistors employed by an RC-coupled amplifier
hfe=100//hfe=current gain
hie=2*10^3//hie=input impedance in ohm
Cob=2*10^-12//Cob=capacitance in farad quoted by the transistor manufacturers
C=0.4*10^-6//C=coupling capacitance in farad
RL=8*10^3//RL=load resistance in ohms for each transistor
CW=10*10^-12//CW=wiring capacitance in farad
fl=1/(2*%pi*C*(hie+RL))//fl=lower half power frequency
format("v",5)
disp("Hz",fl,"The lower half-power frequency is =")
hfb=-hfe/(1+hfe)//hfb=current gain for common base transistor
Coc=Cob/(1+hfb)//Coc=transistor collector capacitance in farad
Cs=Coc+CW//Cs=shunt capacitance in farad
Ro=(hie*RL)/(hie+RL)//Ro=equivalent resistance of the parallel combination of hie and RL
fh=1/(2*%pi*Cs*Ro)//fh=upper half power frequency
format("v",5)
disp("kHz",fh/10^3,"The upper half-power frequency is =")//fh is converted in terms of kHz
