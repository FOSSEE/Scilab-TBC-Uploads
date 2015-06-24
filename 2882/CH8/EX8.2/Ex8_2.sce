//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 267,268 and 269
clear;
clc;

//Given Data

p_out=32;//output power of speaker in watts
Z_speaker=8;//impedance of speaker in ohms

//Solution

v_out=sqrt(p_out*Z_speaker);//output a.c. voltage in volts
i_out=v_out/Z_speaker;//output a.c. current in amperes
printf("The a.c. output voltage V = %d Volts\n The a.c. output current I = %d Amperes",v_out,i_out);
