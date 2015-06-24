//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 190
clear;
clc;

//Given Data
//Figure 6.11

VCC=15;//collector supply voltage in volts
RC=1D3;//collector resistance in ohms
RE=390;//emitter resistance in ohms
R1=18D3;//divider network resistance R1 in ohms
R2=3.9D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
Bdc=120;//DC CE current gain beta
Bac=130;//AC CE current gain beta
VT=25D-3;//voltage equivalent of temperature in volts

//Solution

Rin_dc=Bdc*RE;//dc input resistance in ohms
if 0.1*Rin_dc>R2 then
    VB=VCC*R2/(R1+R2);//base to ground voltage in volts , since Rin>10*R2 it can be neglected
end
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/RE;//emitter current in amperes
IC=IE;//collector current is approximately equal to emitter current
VC=VCC-IC*RC;//collector to ground voltage in volts
VCE=VC-VE;//collector to emitter voltage in volts
re=VT/IE;//equivalent BJT model emitter resistance in ohms

disp("(i)");
printf("Without emitter bypass capacitor.\n");
gain=RC/(re+RE);//base to collector voltage gain
printf("Base to collector voltage gain = %.2f\n",gain);

disp("(ii)");
printf("With RE shorted.\n");
gain=RC/re;//base to collector voltage gain
printf("Base to collector voltage gain = %d\n",gain);

//gain deviation due to approximations in textbook
