//scilab 5.4.1
//Windows 7 operating system
//chapter 19 VLSI Technology and Circuits
clc
clear
ID=50*10^-6//ID=drain current in amperes
k=25*10^-6//k=ue/D in A/V^2
VDS=0.25//VDS=drain-to-source voltage
VGS=5//VGS=gate-to-source voltage
VTH=1.5//VTH=threshold voltage
w=ID/(k*(VGS-VTH)*VDS)//w=W/L
format("v",5)
disp(w,"W/L=")
P=VDS*ID//P=power dissipated by the transistor
disp("micro Watt",P*10^6,"The dissipated power is=")
VDD=5//VDD=drain supply voltage of given NMOS transistor
R=(VDD-VDS)/ID//R=load resistor to be connected in series with the drain
disp("kilo ohm",R/1000,"The load resistance is=")
