
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
Vs1=15
Vs2=30//Vs=supply voltage varying from 15(Vs1) to 30(Vs2) Volt
Vzo=9//Vzo=knee voltage
rZ=5//rZ=dynamic resistance in ohms
R=800//R=series resistance in ohms
Izmin=(Vs1-Vzo)/(R+rZ)//Izmin=current through zener diode when Vs is 15 V
disp("A",Izmin,"Izmin=")
Vomin=(rZ*Izmin)+Vzo//Vomin=corresponding minimum output voltage
disp("V",Vomin,"Vomin=")
Izmax=(Vs2-Vzo)/(R+rZ)//Izmax=current through zener diode when Vs is 30 V
disp("A",Izmax,"Izmax=")
Vomax=(rZ*Izmax)+Vzo//Vomax=corresponding maximum output voltage
disp("V",Vomax,"Vomax=")
disp("Output voltage Vo varies in the range Vomin to Vomax")


