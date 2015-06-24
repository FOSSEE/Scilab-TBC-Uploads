clear; clc; close;

Vm = 200;    //volts
Vk = 0.7;    //volts
Vdc = -0.318*Vm;    
Vdc_si = -0.318*(Vm - Vk);

disp(Vdc,'Dc volatge for ideal diode :');
disp(Vdc_si,'Dc voltage for silicon diode :');
