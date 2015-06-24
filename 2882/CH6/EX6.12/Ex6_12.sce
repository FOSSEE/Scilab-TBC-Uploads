//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 205
clear;
clc;

//Given Data
//Figure 6.31

VCC=18;//collector supply voltage in volts
RB=3.9D6;//base resistance in ohms
RE=470;//emitter resistance in ohms
VBE=1.6;//forward voltage drop of emitter diode of darlington pair in volts
Bac=10000;//DC current gain beta for darlington pair

//Solution

IB=(VCC-VBE)/(RB+Bac*RE);//base current in amperes
IE=Bac*IB;//emitter current in amperes
IC=IE;//collector current is almost equal to emitter current
VE=IE*RE;//emitter to ground voltage in volts
VB=VE+VBE;//base to ground voltage in volts
printf("IB = %.2f μA\n ",IB*10^6);
printf("IE = %.1f mA\n ",IE*10^3);
printf("IC = %.1f mA\n ",IC*10^3);
printf("VE = %.2f Volts\n ",VE);
printf("VB = %.2f Volts\n ",VB);

//error in calculation in textbook for VB
