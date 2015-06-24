//Exa 9.6
clc;
clear;
close;
//given data
//IC 723
Vsense=0.7//in volts
Vo=5;//in volts
Im=50;//in mA
Id=1;//in mA
Vr=7;//in volts
R1=(Vr-Vo)/(Id*10^-3);
R2=Vo/(Id*10^-3);
R3=(R1*R2)/(R1+R2);
Rcl=Vsense/(Im*10^-3);
disp("various resistance values for the circuit is as follows : ")
disp(R1,"R1 :")
disp(R2,"R2 :")
disp(R3,"R3 :")
disp(Rcl,"Rcl :")