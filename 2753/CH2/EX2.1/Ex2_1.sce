//Example 2.1: 
clc;
clear;
close;
//given data :
Pmax=364;//dissipation in milliwatt
Vz=9.1;//in V
Izmax=Pmax/Vz;//in mA
format('v',4)
disp(Izmax,"maximum current the diode can handle is ,(mA)=")
