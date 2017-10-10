// Exa 3.1
// To determine free space and reflected surface attenuations.

clc;
clear all;

hb=100; //in feets(height of BS antenna)
hm=5;  // in feets(height of mobile antenna)
f=881.52;//in MHz
lamda=1.116;  //in feet
d=5000;  //in feet
Gb=10^0.8;  //8dB(BS antenna gain)
Gm=10^0;   // 0dB (Mobile antenna gain)

//solution
free_atten=(4*%pi*d/lamda)^2*(Gb*Gm)^-1;
y=round(10*log10(free_atten));
printf('Free space attenuation is %d dB \n',y);
reflect_atten= (d^4/(hb*hm)^2)*(Gb*Gm)^-1;
x=round(10*log10(reflect_atten));
printf(' Reflecting surface attenuation is %d dB \n ',x);
