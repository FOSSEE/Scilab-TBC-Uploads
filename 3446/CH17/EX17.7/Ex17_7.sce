// Exa 17.7
// To calculate downlink cell load-factor and number of voice users per cell for a WCDMA system.

clc;
clear all;

Ri=12.2*10^3;//Information rate in bps
Rc=3.84*10^6;// Chip rate in chips per second
Eb_Nt=4;   // in dB
Eb_Nt=10^(Eb_Nt/10);
B=0.5;//Average interference factor due to other cells
Zeta=0.6; // orthogonality factor
Imargin=2;//Interference margin(3 dB)
Vi=0.65  //assuming Channel activity factor as 0.65

//solution
Loadfactor_peruser=(Zeta+B)*(1/((Rc/Ri)*(1/Eb_Nt)*(1/Vi)))
printf('Downlink cell load factor is %.4f \n ',Loadfactor_peruser);
cellLoading=(Imargin-1)/Imargin;
Voiceusers=cellLoading/Loadfactor_peruser;
printf('No of voice users per cell are %d \n ',Voiceusers);
