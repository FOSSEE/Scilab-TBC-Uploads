
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
Vz=3//Vz=breakdown voltage of zener diode
Vi=12//Vi=input voltage
V=[12;-3]//V=[Vi:-Vz]
R1=1000
R2=1000
R3=500//R1,R2,R3=resistances
R=[R1+R2 -R2;-R2 R2+R3]
I1=inv(R)*V//solving this matrix on the basis of application of KCL & KVL,we get the values of branch currents I & Iz as I1=[I;Iz]
disp("A",I1(1),"I=")
disp("A",I1(2),"Iz=")
Pz=Vz*I1(2)//Pz=power dissipated in zener diode
disp("W",Pz,"Pz=")
disp("Power dissipated does not exceed the maximum power limit of 20mW")


