
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
Vr=V-Vz//Vr=voltage drop across series resistance R
disp("V",Vr,"Vr=")
R=Vr/I//R=series resistance
disp("ohm",R,"R=")
//I=Iz+Il
Iz=2*(10^-3)//Iz=minimum diode current
Il=I-Iz//Il=current through load resistance Rl
disp("A",Il,"Il=")
Rlm=Vz/Il//Rlm=minimum value of Rl
disp("ohm",Rlm,"Rlm=")
disp("The allowable range of variation of Rl is 428.6ohm<=Rl<infinite")

