//Optical Fiber communication by A selvarajan
//example 11.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
BW=7//bandwidth in MHz
SNR=60//signal to noise ratio in dB
Pin=0//Launched power in dBm
Trise_source=20//risetime at source LED in ns
delta_lambda=20//spectra width in nm
lambda=850;//operating wavelength in nm
c=2.998*10^5;//velocity of light in Km/sec
R=0.3//Detector PIN FET responsivity in A/W
Cdiode=3//diode capacitance in pf
trise_detector=1//risetime at detector in ns
S=-30//sensitivity in dbm
Lsplice=0.2//splice loss in dB/connector
NA=0.2//numerical aperture for GI/MM
n1=1.46//refractive index of core
A=2//attenuation in dB/Km
Ls=3//loss due to source in dB
Ld=1//loss due to detector in dB
Psm=5//system margin in dB
c=3*10^8//velocity of light in m/s

//solution

Available_power=Pin-S;//available power in dB
Total_loss=Ls+Ld+Psm;
Power_left=Available_power-Total_loss;//power left in dB
L=(Power_left+Lsplice)/(Lsplice/2+2);
tmod=L*10^3*(NA^2)/(2*c*n1);//modal dispersion in s
Bit_rate=1/tmod;//bit rate in bps
mprintf('Maximum permissible link length is =%fKm',L);

mprintf('\nMaximum permissible bit rate is =%fMbps',Bit_rate/10^6);//division by 10^6 to convert the unit from bps to Mbps//the answer is different because of rounding off 
