//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 418
clear;
clc;

//Given

vI1=[-3.3 1.9];//voltage at base of transistor Q1 at instants T1 and T2 in volts
vI2=[-3.7 1.1];//voltage at base of transistor Q2 at instants T1 and T2 in volts
vO1=[4.3 2.7];//voltage at collector of transistor Q1 at instants T1 and T2 in volts
vO2=[4.5 3.1];//voltage at collector of transistor Q2 at instants T1 and T2 in volts

//Solution

vICM=((vI1(2)-vI1(1))+(vI2(2)-vI2(1)))/2;//input common mode voltage in volts
vOCM=((vO1(2)-vO1(1))+(vO2(2)-vO2(1)))/2;//output common mode voltage in volts
ACM=vOCM/vICM;//common mode gain
printf("Common mode gain ACM = %.2f",ACM);
