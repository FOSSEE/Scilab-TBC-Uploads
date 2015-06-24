//Exa4.12
clc;
clear;
close;
//given data
Vz=5;//in volts
to=25;//in degree centigrade
t=100;//in degree centigrade
Vdrop=4.8;//in Volts
delVz=Vdrop-Vz;//in Volts
delt=t-to;//in degree centigrade
TempCoeff=delVz*100/(Vz*delt);
disp(TempCoeff,"Temperature coefficient f zener diode in %  : ");