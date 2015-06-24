clc;
//page 608
//problem 12.2

//Baseband cutoff signal fM = 4 kHz
fM = 4 * 10^3;

//White noise power spectral density n
n = 2*10^(-9);

// Part (a)

//Input Signal energy Si = 0.001
Si_a = 0.001;

//No of levels used for PCM Coding M = 8
M_a = 8;

N_a = log2(M_a);

//Input SNR is SNR_ip
SNR_ip = Si_a/(n*fM);

//Output SNR is SNR_op
SNR_op = (2^(2*N_a))/(1 + (2^(2*N_a + 1))*erfc((SNR_ip*(1/(2*N_a))))^0.5);

disp('Input SNR for (a) is '+string(10*log10(SNR_ip))+' dB');
disp('Output SNR (a) is '+string(10*log10(SNR_op))+' dB');

// Part (b)

//Input Signal energy Si = 0.001
Si_b = 0.001;

//No of levels used for PCM Coding M = 256
M_b = 256;

N_b = log2(M_b);

//Input SNR is SNR_ip_b
SNR_ip_b = Si_b/(n*fM);

//Output SNR is SNR_op_b
SNR_op_b = (2^(2*N_b))/(1 + (2^(2*N_b + 1))*erfc((SNR_ip_b*(1/(2*N_b))))^0.5);

//Unfortunately in scilab the function erfc approximates the output value to a larger extent due to which an exact value cannot be obtained.
//The difference in the textbook answer and obatined answer is significant because of converting the answer into dB.

disp('Input SNR for (b) is '+string(10*log10(SNR_ip_b))+' dB');
disp('Output SNR for (b) is '+string(10*log10(SNR_op_b))+' dB');

// Part (c)

//Input Signal energy Si = 0.01
Si_c = 0.01;

//No of levels used for PCM Coding M = 256
M_c = 256;

N_c = log2(M_c);

//Input SNR is SNR_ip_c
SNR_ip_c = Si_c/(n*fM);

//Output SNR is SNR_op_c
SNR_op_c = (2^(2*N_c))/(1 + (2^(2*N_c + 1))*erfc((SNR_ip_c*(1/(2*N_c))))^0.5);

disp('Input SNR for (c) is '+string(10*log10(SNR_ip_c))+' dB');
disp('Output SNR for (c) is '+string(10*log10(SNR_op_c))+' dB');


