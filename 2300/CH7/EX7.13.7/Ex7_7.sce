//scilab 5.4.1
//Windows 7 operating system
//chapter 7 Junction Transistor Characteristics
clc
clear
IB=(30*10^-3)//IB=base current (in mA) of transistor in CE mode
IC1=3.5
IC2=3.7
VCE1=7.5
VCE2=12.5//IC1 and IC2 are the change found in collector current IC in mA when collector emitter voltage VCE changes from VCE1 to VCE2(in volts)
VCE=VCE2-VCE1
IC=IC2-IC1
disp("Output resistance is")
Ro=VCE/IC
disp("kilo ohm",Ro,"The output resistance is =")
b=IC2/IB//b=forward current transfer ratio or dc current gain
disp(b,"b=")
a=b/(b+1)//a=fraction of the emitter current contributed by the carriers injected into the base and reaching the collector
//b=a/(1-a) Hence a=b/(b+1)
disp(a,"a=")
