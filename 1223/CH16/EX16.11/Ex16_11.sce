clear;
clc;
//Example 16.11
Vtn=1;
Vtp=-1;
Vdd=5;
Vth=1;
Vil=Vtn+3*(Vdd+Vtp-Vth)/8;
printf('\ninput voltage at the transition points Vil=%.3f V\n',Vil)
Vih=Vtn+5*(Vdd+Vtp-Vtn)/8;
printf('\ninput voltage at the transition points Vih=%.3fV\n',Vih)
Vohu=1*(2*Vil+Vdd-Vtn-Vtp)/2;
printf('\noutput voltage =%.3f V\n',Vohu)
Volu=1*(2*Vih-Vdd-Vtn-Vtp)/2;
printf('\noutput voltage =%.2f V\n',Volu)
NML=Vil-Volu;
printf('\nnoise margin =%.3f V\n',NML)
NMH=Vohu-Vih;
printf('\nnoise margin=%.3f V\n',NML)
