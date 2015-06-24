// Exa 2.15
format('v',6);clc;clear;close;
// Given data
V = 80;// in V
I = 15;// in mA
I = I * 10^-3;// in A
R_T = V/I;// in ohm
R_T = R_T * 10^-3;//apparent resistance in k ohm
Rapp = R_T;// in k ohm
disp(Rapp,"The apparent resistance in kΩ is");
sensitivity = 1.5;// in k ohm
f_s_reading = 150;//full scale reading in V
Rv = sensitivity*f_s_reading;// in k ohm
//R_T = (Rx*Rv)/(Rx+Rv);
Rx = (R_T*Rv)/(Rv-R_T);//Actual resistance of unknown resistor in k ohm
disp(Rx,"Actual resistance of unknown resistor in kΩ is");
At = Rx;// in k ohm
Am = Rapp;// in k ohm
PerError = ((At-Am)/At)*100;//Error due to loading effect of voltmeter  in %
disp(PerError,"Error due to loading effect of voltmeter in % is");
PerAccu = (1-abs(PerError*10^-2))*100;//Percentage relative accuracy  in %
disp(PerAccu,"Percentage relative accuracy in % is");
