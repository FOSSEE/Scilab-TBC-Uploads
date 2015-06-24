
//scilab 5.4.1
//windows 7 operating system
//chapter 7:Junction Transistor Characteristics
clc;
clear;
//given data
a=0.975;//a=fraction of the emitter current contributed by the carriers injected into the base and reaching the collector
Ico=10*10^-6;   //reverse saturation current in A
Ib=250*10^-6;   //base current in A

b=a/(1-a);      //transistor gain
disp(b,'gain B=');
Ic=b*Ib+(b+1)*Ico;       //collector current in A
format("v",5)
disp('mA',Ic/10^-3,'Ic=');//Ic is converted in terms of mA
Ie=(Ic-Ico)/a;      //emitter current in A
format("v",5)
disp('mA',Ie/10^-3,'Ie=');//Ie is converted in terms of mA
