//clear//
//Caption:Program to find the load impedance of a slotted line
//Example11.7
//page357
clear;
clc;
close;
S = 5; //standing wave ratio
T = (1-S)/(1+S); //reflection coefficient
Zo = 50; //characteristic impedance
ZL  = Zo*(1+T)/(1-T);
disp(ZL,'Load impedance of a slotted line in ohms ZL=')
//Result
//Load impedance of a slotted line in ohms ZL = 10.  
