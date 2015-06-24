// Exa 6.2
clc;
clear;
close;
// Given data
V=38.4;// in volt
I=0.4;// in amp
ammeterRange= 1;// in amp
voltmeterRange= 50;// in volt
inst_acc= 1/2;// instrument accurcy in %
R= 100;// resistance in ohm

R_A= 2.5;// in ohm
R_V= 6000;// in ohm
Rx= sqrt(R_A*R_V);// in ohm
disp(Rx,"Value of unknown resistance in ohm")
disp("Since the unknown resistance is of value smaller than "+string(Rx)+" ohm, the voltmeter should be connected directly across the unknown resistance as it will give more accurate result")
Rm= V/I;// in ohm
Rx= V/(I*(1-V/(I*R_V)));// in ohm
ErrorAmmeter= inst_acc*ammeterRange/R;// Error in ammeter reading in amp
ErrorVoltmeter= inst_acc*voltmeterRange/R;// Error in voltmeter reading in volt
// Percentage error at 0.4 A reading 
E1= ErrorAmmeter/0.4*100;//in %
// Percentage error at 38.4 V reading 
E2= ErrorVoltmeter/38.4*100;//in %
//Error due to ammeter and voltmeter
E= sqrt(E1^2+E2^2);
//Absolute error due to ammeter and voltmeter
Error_ammeter_voltmeter= E/R*Rx;// in pos and neg
disp(Error_ammeter_voltmeter,"Absolute error due to ammeter and voltmeter in ohm")
disp("So the resistance is specified as "+string(Rx-Error_ammeter_voltmeter)+" to "+string(Rx+Error_ammeter_voltmeter));
