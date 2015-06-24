clc;
clear all;
Gain=15*1e-3  //v/rad
Delta_phase=20  //degree

// convert phase difference into radian
radian=Delta_phase*(3.14/180);

V_out=Gain*radian;

disp(+"mV",V_out*1e3,"phase detector output voltage");
