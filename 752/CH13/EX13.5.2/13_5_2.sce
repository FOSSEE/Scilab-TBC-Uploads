clc;
//page no 475
//prob no. 13.5.2
// The attenuation coeff is 0.0006 N/m
a=0.0006;//The attenuation coeff in N/m
//a)Determinaion of the attenuation coeff in dB/m
a_dB=8.686*a;
disp('dB/m',a_dB,'The attenuation coeff is');
//b) Determination of attenuation coeff in dB/mile
k=1609;//conversion coeff for meter to mile
a_dB_mile=k*a_dB;
disp('dB/mile',a_dB_mile,'The attenuation coeff is');