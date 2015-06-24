//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 418
clear;
clc;

//Given

vICM1=0;//input common mode vOltage in volts
vOCM1=5.4;//output common mode vOltage in volts
vICM2=1.05;//input common mode vOltage in volts
vOCM2=5.0;//output common mode vOltage in volts
vO2=5.4;//vOltage at collector of transistor Q2 in volts

//Solution

disp("vOCM=5.4 Volts");
vO1=2*vOCM1-vO2;//vOltage at collector of transistor Q1 in volts
printf("Voltage at collector of transistor Q1 vO1 = %.1f volts\n ",vO1);

disp("vOCM=5.0 Volts");
vO1=2*vOCM2-vO2;//vOltage at collector of transistor Q1 in volts
printf("Voltage at collector of transistor Q1 vO1 = %.1f volts",vO1);

//calculation for vOCM=5 Volts not done in textbook
