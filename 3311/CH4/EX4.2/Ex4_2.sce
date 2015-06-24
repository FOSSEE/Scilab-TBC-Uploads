// chapter 4
// example 4.2
// Calculate the series resistance
// page-128-129
clear;
clc;
// given
I_T1=100; // in A (current of SCR 1)
I_T2=150; // in A (current of SCR 2)
V_T1=2.1; // in V (on-state voltage of SCR 1)
V_T2=1.75; // in V (on-state voltage of SCR 2)
// calculate
// since V_T1+I_T1*(R+R_T1)=V_T2+I_T2*(R+R_T2) and assume R+R_T1=R1 (resistance to be connected in series)
// therefore V_T1+I_T1*R1=V_T2+I_T2*R1 or we get
R1=(V_T1-V_T2)/(I_T2-I_T1);
printf("The value of required series resistance is \t R1=%.3f ohm",R1);
