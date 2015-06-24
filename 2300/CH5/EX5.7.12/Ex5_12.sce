
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
V=35//V=supply voltage
Iz=25*10^(-3)//Iz=diode current
Il=5*10^(-3)//Il=load current
Vzo=7//Vzo=knee voltage of zener diode
rZ=6//rZ=dynamic resistance in ohms
Vz=Vzo+(rZ*Iz)//Vz=zener voltage
disp("V",Vz,"Vz=")
I=Iz+Il//I=current through resistance R
disp("A",I,"I=")
R=(V-Vz)/I
disp("ohm",R,"R=")
