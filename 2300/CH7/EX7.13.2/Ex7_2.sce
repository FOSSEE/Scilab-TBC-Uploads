
//scilab 5.4.1
//windows 7 operating system
//chapter 7:Junction Transistor Characteristics
clc;
clear;
//given data
a=0.98;//a=fraction of the emitter current contributed by the carriers injected into the base and reaching the collector
Ie=0.003;   //emitter current in A
Ico=10*10^-6;   //reverse saturation current in A

Ic=a*Ie+Ico;      //collector current in A
format("v",8)
disp('mA',Ic/10^-3,'Ic=');//Ic is converted in terms of mA

Ib=Ie-Ic;       //base current in A
format("v",8)
disp('µA',Ib/10^-6,'Ib=');//Ib is converted in terms of µA
