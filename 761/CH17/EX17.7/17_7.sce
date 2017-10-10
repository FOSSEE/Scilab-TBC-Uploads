clc;
//page no 631
//prob no. 17.7
//A signal with level of 20dBm &amp; insertion loss=1dB &amp; coupling =20dB,directivity=40dB
sig_in=20;loss=1;couple=20;direct=40;
//Determination of signal level in main guide
sig_level_main=sig_in-loss;
disp('dBm',sig_level_main,'The signal level in main guide is');
//Determination of signal level in secondary guide
sig_level_sec=sig_in-couple;
disp('dBm',sig_level_sec,'The signal level in secondary guide is');
//If signal dirn in main guide were reveresed,the signal level in sec gide would reduced by 40dB to
sig_sec_rev=(sig_level_sec)-(direct);
disp('dBm',sig_sec_rev,'The signal level from sec guide when reversed guide is');