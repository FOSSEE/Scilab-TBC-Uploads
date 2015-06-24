clc;
//page 11
//ex-1.7

PmW=100; //power in mW
PdBm=10*log10(PmW/1);  //P in dBm level
disp('dBm',PdBm,+'(a).   Power in dBm level is:');
PdBW=PdBm-30;  //P in dBW level
disp('dBW',PdBW,+'(b).   Power in dBW level is:');
PdBf=PdBm+120;  //Pin dBf level
disp('dBf',PdBf,+'(c)   Power in dBf level is:');
