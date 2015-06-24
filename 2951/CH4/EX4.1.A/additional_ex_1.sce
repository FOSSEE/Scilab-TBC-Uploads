
clc;
clear;
Freq_dev=6; //Frequency Deviation in kHz
Vm=3; //Modulating Voltage in V

Dev=Freq_dev*10^(3)/Vm;

// for Vm=6V

Vm=6;
Freq_dev_new=Dev*Vm;

disp(Freq_dev_new,"the new deviation( in Hz)");
