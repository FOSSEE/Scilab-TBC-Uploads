// Exa 3.5

clc;
clear;

// Given data

// A 741C op-amp is used
G=50; // Gain of op-amp
F=20*10^3; // Voltage gain Vs frequency curve is flat upto this frequency(Hz)

// Solution

printf(' The slew rate for 741C is 0.5 V/μsec. \n');
SR=0.5; // V/μsec
printf('  From Eq. 3.51, we can get Vm as : ');
// SR = 2*%pi*f*Vm/10^6; // V/μsec
Vm = SR*10^6/(2*%pi*F);
printf('%.2f V. \n ',Vm);
Vpp=2*Vm;
printf(' The peak to peak output voltage = %.2f V. \n',Vpp);
printf('  Hence, for the output to be undistorted sine wave, the maximum input signal should be less than %d mV peak to peak.\n',(Vpp*10^3)/G);
