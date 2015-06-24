//ex12.1
A_ol=100000;    //open loop voltage gain
A_cm=0.2;    //common mode gain
CMRR=A_ol/A_cm;
CMRR_dB=20*log10(CMRR);
disp(CMRR,'CMRR')
disp(CMRR_dB,'CMRR in decibels')