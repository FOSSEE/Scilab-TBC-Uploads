clc;
clear all;
Kc=20*1e-3;  //V/rad
Delta_phase=0.15;  //rad

V_out=Kc*Delta_phase;

disp(+"mV",V_out*1e3,"phase detector output voltage");
