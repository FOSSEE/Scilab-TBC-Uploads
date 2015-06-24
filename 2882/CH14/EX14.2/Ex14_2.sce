//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 418
clear;
clc;

//Given

vI1=1.15;//voltage at base of transistor Q1 in volts
vI2=0.95;//voltage at base of transistor Q2 in volts
vO1=2;//voltage at collector of transistor Q1 in volts
vO2=8;//voltage at collector of transistor Q2 in volts

//Solution

vICM=(vI1+vI2)/2;//input common mode voltage in volts
vOCM=(vO1+vO2)/2;//output common mode voltage in volts
printf("Input common mode voltage vICM = %.2f Volts\n ",vICM);
printf("Output common mode voltage vOCM = %.1f Volts",vOCM);
