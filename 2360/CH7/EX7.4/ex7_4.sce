// Exa 7.4
format('v',7);clc;clear;close;
// Given data
voltsBYdiv = 2;//volts per division in V/div
Timebase = 2;//base time in ms/div
Verticaloccupancy = 3;//Vertical occupancy in cm
Vpp = voltsBYdiv*Verticaloccupancy;//peak to peak voltage in V
Vm = Vpp/2;// in V
V_RMS = Vm/sqrt(2);//r.m.s. value of the voltage in V
disp(V_RMS,"The r.m.s. value of the voltage in V is");
Horizontaloccupancy = 2;//Horizontal occupancy in cm
timeBYdiv = 2;//time per division in mV
timeBYdiv = timeBYdiv*10^-3;// in V
T = timeBYdiv*Horizontaloccupancy;// in sec
f = 1/T;// in Hz
disp(f,"The frequency in Hz is");
