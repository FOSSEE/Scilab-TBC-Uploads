clc;
//page no 574
//prob no. 15.7.1
// In this problem data regarding the sea water is given
conductivity = 4;//measured in S/m
rel_permittivity =80;
u=4*%pi*10^-7;
f1=100;//measured in Hz
f2=10^6;//measured in Hz
// A) first it is necessary to evaluate the ratio of conductivity/w*rel_permittivity
w1=2*%pi*f1;
r=conductivity/w1*rel_permittivity;
//after the calculation this ratio is much greater than unity. Therefore we have to use following eq to calculate the attenuation coeff as
a=sqrt(w1*conductivity*u/2);
disp('N/m',a,'The attenuation coeff is');
// By using the conversion factor 1N=8.686 dB
a_dB=a*8.686;
disp('dB/m',a_dB,'The attenuation coeff in dB/m is');
// B)
w2=2*%pi*f2;
r=conductivity/w2*rel_permittivity;
//after the calculation this ratio is much greater than unity. Therefore we have to use following eq to calculate the attenuation coeff as
a=sqrt(w2*conductivity*u/2);
disp('N/m',a,'The attenuation coeff is');
// By using the conversion factor 1N=8.686 dB
a_dB=a*8.686;
disp('dB/m',a_dB,'The attenuation coeff in dB/m is');