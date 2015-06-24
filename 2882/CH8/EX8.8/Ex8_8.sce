//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 288
clear;
clc;

//Given Data

vin_p=2;//input signal amplitude in volts
fin=50;//input signal frequency in hertz
I1=10;I2=1.5;I3=0.70;I4=0.3;//input current nth harmonic's amplitude in amperes

//Solution

D2=I2/I1;//second harmonic distortion
D3=I3/I1;//third harmonic distortion
D4=I4/I1;//fourth harmonic distortion
disp("(a)");
printf("Second harmonic distortion D2 = %.f %%\n ",D2*100);
printf("Third harmonic distortion D3 = %.f %%\n ",D3*100);
printf("Fourth harmonic distortion D4 = %.f %%\n ",D4*100);

D=sqrt(D2^2+D3^2+D4^2);//distortion factor
P=D^2;//percentage increase in power
disp("(b)");
printf("Percentage increase in power = %.2f %%",P*100);
