clc;
// page no 408
// prob no 12_2
//A modulator transmit symbol with symbol rate=10k/sec with 64 states
M=64;
S=10000;
//Baud rate is simply symbol rate
disp('kbaud',S/1000,'The baud rate is '); 
//Determination of bit rate
C=S*log2(64);
disp('kb/s',C/1000,'The bit rate is '); 