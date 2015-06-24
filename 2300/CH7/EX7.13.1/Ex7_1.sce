
//scilab 5.4.1
//windows 7 operating system
//chapter 7:Junction Transistor Characteristics
clc;
clear;
//given data
a=0.99;//a=fraction of the emitter current contributed by the carriers injected into the base and reaching the collector
Rl=4500;     //Load resistance in ohms
rd=50;      //dynamic resistance in ohms

Av=a*Rl/rd;     //Voltage gain
Ap=a*Av;//Power gain

disp(Av,'Av=');
disp(Ap,'Ap=');

