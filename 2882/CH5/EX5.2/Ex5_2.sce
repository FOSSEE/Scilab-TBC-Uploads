//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 149
clear;
clc;

//Given Data
//Figure 5.4

VCC=15;//biasing voltage in volts
Rl=1.5D3;//load resistance in ohms

//Solution

//Assuming VCEsat=0 volts
ICsat=VCC/Rl*1000;//saturation current in milli-amperes 

printf("ICsat = %d mA\n",ICsat);
