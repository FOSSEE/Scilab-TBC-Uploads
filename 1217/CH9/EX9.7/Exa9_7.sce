//Exa 9.7
clc;
clear;
close;
//given data
// IC 723
Id=1;//in mA
Vsense=0.7;//in volts
Vo=15;//in volts
Im=50;//in mA
Vr=7;//in volts
R1=(Vo-Vr)/(Id*10^-3);
R2=Vr/(Id*10^-3);
R3=(R1*R2)/(R1+R2);
Rcl=Vsense/(Im*10^-3);
disp("various resistance values for the circuit is as follows : ")
disp(R1,"R1 :")
disp(R2,"R2 :")
disp(R3,"R3 :")
disp(Rcl,"Rcl :")