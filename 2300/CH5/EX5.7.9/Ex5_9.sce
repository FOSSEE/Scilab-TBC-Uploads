
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
V=15//V=supply voltage
Vz=12//Vz=Zener voltage
P=0.36//P=power of Zener diode
//P=Vz*I
I=(P/Vz)//I=maximum allowable Zener current 
disp("A",I,"I=")
Iz=2*10^(-3)//Iz=minimum value attained by the zener current
Rl=1000//Rl=load resistance
i=Vz/Rl//i=load current
disp("A",i,"i=")
Imin=Iz+i//Imin=minimum allowable value of current
R=100//R=series resistance
Vr=Imin*R//Vr=voltage drop across R
disp("V",Vr,"Vr=")
Vmin=Vz+Vr//Vmin=minimum value of V
disp("V",Vmin,"Vmin=")
I1=I+i
disp("A",I1,"I1=")
VR=I1*R
disp("V",VR,"VR=")
Vmax=Vz+VR//Vmax=maximum value of V
disp("V",Vmax,"Vmax=")
disp("V can vary between Vmin & Vmax")
