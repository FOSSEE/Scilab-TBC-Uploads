clc;
clear;
W=3000;
SNR_db=39;// 10log (SNR_ratio)=SRN_db
SNR_ratio=7943; //10^(3.9)

C=W*log2(1+SNR_ratio);

disp(C,"Capacity (in bits/s) =");
