//Example_a_16_6 page no:784
clc;
current_gain=(25*0.05*10^6)/(1500+0.05*10^6);
V2_coeff=-6.6*10^-4+0.1*10^-4-0.2*10^-4;
V1_coeff=0.05;
voltage_gain=V1_coeff/V2_coeff;
disp(current_gain,"the current gain is ");
disp(voltage_gain,"the voltage gain is ");
//voltage gain value is calculated wrongly in text book
