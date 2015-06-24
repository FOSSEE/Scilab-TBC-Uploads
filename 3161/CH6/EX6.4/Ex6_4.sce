clc;
//page 365
//problem 6.4

//Given energy per bit Eb = 0.01
Eb = 0.01;

//Given fundamental frequency is fb = 8 KHz 
fb = 8*10^3;

//No of symbols M = 16
M = 16;

N = log2(M);

BW_BPSK = 2*fb;
disp('Bandwidth for BPSK is '+string(BW_BPSK)+'Hz');

BW_QPSK = fb;
disp('Bandwidth for QPSK is '+string(BW_QPSK)+'Hz');

BW_16MPSK = fb/2;
disp('Bandwidth for 16 MPSK is '+string(BW_16MPSK)+'Hz');

BW_BFSK = 4*fb;
disp('Bandwidth for BFSK is '+string(BW_BFSK)+'Hz');

BW_MSK = 1.5*fb;
disp('Bandwidth for MSK is '+string(BW_MSK)+'Hz');

BW_16MFSK = 2*M*fb;
disp('Bandwidth for 16 MFSK is '+string(BW_16MFSK)+'Hz');


Min_dist_BPSK = 2*(Eb)^0.5;
disp('Minimum distance in signal space in BPSK is '+string(Min_dist_BPSK));

Min_dist_QPSK = 2*(Eb)^0.5;
disp('Minimum distance in signal space in QPSK is '+string(Min_dist_QPSK));

//The given answer in the textbook is 0.0152, which appears to be wrong. The correct answer is 0.078
Min_dist_16MPSK = (4*N*Eb*(sin(%pi/16))^2)^0.5;
disp('Minimum distance in signal space in 16 MPSK is '+string(Min_dist_16MPSK));

Min_dist_BFSK = (2*Eb)^0.5;
disp('Minimum distance in signal space in ortho BFSK is '+string(Min_dist_BFSK));

Min_dist_MSK = 2*(Eb)^0.5;
disp('Minimum distance in signal space in MSK is '+string(Min_dist_MSK));

Min_dist_16MFSK = (2*N*Eb)^0.5;
disp('Minimum distance in signal space in ortho 16 MFSK is '+string(Min_dist_16MFSK));

disp('The best method that provides least noise susceptibility is 16 MFSK, then BPSK, then QPSK, then comes MSK, then orthogonal BFSK and finally 16 MPSK')


