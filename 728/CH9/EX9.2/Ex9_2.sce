//Caption:Determine threshold electric field
//Exa:9_2
clc;
clear;
close;
f=10*10^9;//in Hz
L=75*10^-6;//Device length (in m)
V=25;//Voltage pulse amplified (in volts)
E_th=V/L;
disp(E_th,'Threshold Electric field (in kV/cm) =');