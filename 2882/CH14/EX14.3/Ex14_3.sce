//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 418 and 419
clear;
clc;

//Given

vI1=0;//voltage at base of transistor Q1 in volts
vI2p=5D-3;//peak voltage at base of transistor Q2 in volts
vI2w=0.2;//frequency of vI2 in hertz
vICM_a=0;//input common mode voltage in volts
vOCM_a=5;//output common mode voltage in volts
vICM_b=-2D-3;//input common mode voltage in volts
vOCM_b=5.01;//output common mode voltage in volts
vICM_c=2D-3;//input common mode voltage in volts
vOCM_c=4.99;//output common mode voltage in volts

//Solution

dvICMp=vI2p/2;//peak input common mode voltage in volts
dvICMw=vI2w;//input common mode frequency in hertz
printf("vICM = %.1f sin(%.1f pi t) mV\n ",dvICMp*10^3,dvICMw*2);
dvOCMp=(vOCM_b-vOCM_a)/vICM_b*dvICMp;//peak output common mode voltage in volts
dvOCMw=dvICMw;//output common mode frequency in hertz
printf("vOCM =5 V %.f sin(%.1f pi t) mV",dvOCMp*10^3,dvOCMw*2);

//error in calculation of vOCM in textbook
