//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 429
clear;
clc;

//Given
//Figure E 14.7

Av_ol=200000;//open loop voltage gain
Zin=5;//input impedance in ohms
Zout=50;//output impedance in ohms
Ri=2.7D3;//resistance Ri in ohms
Rf=135D3;//feedback resistance in ohms

//Solution

Zin=Ri;//input impedance of amplifier in ohms
Zout_miller=Rf*Av_ol/(1+Av_ol);//miller output impedance in ohms
Zout_total=1/(1/Zout+1/Zout_miller);//total output impedance of amplifier in ohms
printf("Input impedance Zin = %.1f kilo-ohms\n ",Zin/10^3);
printf("Output impedance Zout = %.f ohms",Zout_total);
