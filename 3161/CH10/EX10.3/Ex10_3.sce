clc;
//page 520
//problem 10.3

// Part (a)

//Input SNR SNR_ip
SNR_ip = 1000;

//Beta B
B = 10;

//Output SNR SNR_op
SNR_op = (1.5*(B^2)*SNR_ip)/(1 + (12*B/%pi)*(SNR_ip)*exp(-0.5*(1/(B+1))*(SNR_ip)));

disp('Output SNR  is '+string(10*log10(SNR_op))+' dB');

// Part (b)

//Input SNR SNR_ip
SNR_ip = 10;

//Output SNR SNR_op
SNR_op = (1.5*(B^2)*SNR_ip)/(1 + (12*B/%pi)*(SNR_ip)*exp(-0.5*(1/(B+1))*(SNR_ip)));

disp('Output SNR  is '+string(10*log10(SNR_op))+' dB');
