//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 301
clear;
clc;

//Given

P_rated=50;//wattage rating of amplifier
RL=16;//load resistance of speaker in ohms
Gp_dB=22;//power gain in dB units
Gv_dB=37;//voltage gain in dB units

//Solution

disp("(i)");
Pi=P_rated/10^(Gp_dB/10);//input power required in watts
printf("Pi = %.2f mW",Pi*10^3);

disp("(ii)");
Vin=sqrt(P_rated*RL)/10^(Gv_dB/20);//input voltage required in volts
printf("Vin = %.2f mV",Vin*10^3);

//calculation error in textbook as wattage mentioned in question is 50 W and in solution is 37 W
