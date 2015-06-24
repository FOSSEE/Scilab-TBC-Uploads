
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
V=0.6//V=cutin voltage in V
r=150//r=forward resistance in ohm
P=200*(10^-3)//P=maximum power in Watt
//P=(i^2)*r where i=maximum safe diode current
i=(sqrt(P/r))*10^3
disp("mA",i,"i=")
//i=((Vb/3)-V)/3 by applying KCL
Vb=((3*i)+V)*3//Vb=maximum permissible battery voltage
disp("V",Vb,"Vb=")


