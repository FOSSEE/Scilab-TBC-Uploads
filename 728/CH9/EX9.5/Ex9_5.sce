//Caption:Calculate (i)-power gain in dB ,(ii)-power gain if it is USB converter.
//Exa:9.5
clc;
clear;
close;
N_a=2.5*10^16;//per cubic cm
J=33;//in kA/cm^2
q=1.6*10^-19;
V_z=J/(q*N_a);//Avalanche zone velocity (in cm/s)
disp(V_z,'Avalanche zone velocity (in cm/s) =');