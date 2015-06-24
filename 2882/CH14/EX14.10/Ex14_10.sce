//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 432
clear;
clc;

//Given

Av_ol=175000;//open loop voltage gain
Zin=1.5D6;//input impedance in ohms
Zout=70;//output impedance in ohms

//Solution

Zi_vf=(1+Av_ol)*Zin;//input impedance of voltage follower in ohms
Zo_vf=Zout/(1+Av_ol);//output impedance of voltage follower in ohms
printf("Input impedance (Zi)VF = %.f Mega-ohms\n ",Zi_vf/10^6);
printf("Output impedance (Zo)VF = %.4f ohms\n ",Zo_vf);
