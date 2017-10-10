// Exa 11.5
// To Calculate: 
//(a) minimum separation between frequency tones, 
//(b) number of frequency tones produced by a frequency synthesizer,
//(c) processing gain, and 
//(d) hopping bandwidth. 

clc;
clear all;

R=200;//input data rate in bps
Fhop=200;//per second
k=1;//Multipication_Factor

//solution
// We have 32-FSK modulation scheme
Bits_sym=log2(32);
Rs=Fhop/Bits_sym;
printf('There are 200 hops per second and Symbol rate is %d symbols per sec \n',Rs);  
disp("The hop rate is higher than symbol rate, the system is a fast FHSS system.");
SDur=1/Rs;
L=Fhop/Rs;
CDur=SDur/L;
Separation=1/CDur;
M=2^Bits_sym;
Hop_BW=k*M*Fhop*L;
Gp=M*k*L; 
disp("");
printf(' Minimum separation between frequency tones should be %d Hz\n',Separation);
printf(' Number of different frequency tones produced by a frequency synthesizer are %d\n',M);
printf(' Processing Gain is %d\n ',Gp);
printf('Hopping bandwidth is %d kHz\n',Hop_BW/1000);
