clc;
// page no 682
// prob no 18.7
// refer ex no 18.3 and 18.6
Pr_dBm=-62;//power at the receiver in dBm
Pn_dBm=-100;//thermal noise power in dBm
// carrier to noise ratio in dB is given as
C_N=Pr_dBm -Pn_dBm;
disp('dB',C_N,'Carrier to noise ratio is');