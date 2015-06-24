clc;
// page no 742
// prob no 19.17.1
// A digital satellite link is given with following specification
Eb_N0=9.6;//ratio expessed in dB
Rb=1.544*10^6;//bit rate expessed in bps
// The bit rate in dB relative to 1bps is
R_dB_b=10*log10(Rb) ;
//The required CN0 ratio is
CNo_db=Eb_N0+R_dB_b;
disp(CNo_db,'The ratio C/No is');