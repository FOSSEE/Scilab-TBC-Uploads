//Example 4.3: 
clc;
clear;
close;
//given data :
format('v',6)
Vcc=20;// in V
Vbe=0.7;// in V
Rc=2;//in kilo-ohm
Icsat= Vcc/Rc;//in mA
Beta=200;//
Ib=(Icsat/Beta)*10^3;//in micro-A
Rb=((Vcc-Vbe)/(Ib))*10^3;//in kilo-ohm
disp("Rb < "+string(Rb)+"  kilo-ohm")

