//clear//
//Caption: To Calculate input and output power in dBm
//Example3.2
//page 91
clear;
close;
clc;
Pin = 200e-06; //power launched into the fiber
alpha = 0.4; //attenuation in dB per KM
z = 30;  //optical fiber length 30 KM
Pin_dBm = 10*log10(Pin/1e-03);
Pout_dBm = 10*log10(Pin/1e-03)-alpha*z;
Pout = 10^(Pout_dBm/10)
disp(Pin_dBm,'Pin_dBm')
disp(Pout_dBm,'Pout_dBm')
disp(Pout*1e-03,'Output power in watts')
//Result
//Pin_dBm =   - 6.9897  
//Pout_dBm =     - 18.9897
//Output power in watts  =  0.0000126   
