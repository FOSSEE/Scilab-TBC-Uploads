//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 186,187 and 188
clear;
clc;

//Given Data
//Figure 6.9,6.10,6.11,6.12,6.13

VCC=15;//collector supply voltage in volts
RC=1D3;//collector resistance in ohms
RE=390;//emitter resistance in ohms
R1=18D3;//divider network resistance R1 in ohms
R2=3.9D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
Bdc=120;//DC CE current gain beta
Bac=130;//AC CE current gain beta

//Solution

disp("DC analysis for Figure 6.10");
Rin_dc=Bdc*RE;//dc input resistance in ohms
if 0.1*Rin_dc>R2 then
    VB=VCC*R2/(R1+R2);//base to ground voltage in volts , since Rin>10*R2 it can be neglected
end
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/RE;//emitter current in amperes
IC=IE;//collector current is approximately equal to emitter current
VC=VCC-IC*RC;//collector to ground voltage in volts
VCE=VC-VE;//collector to emitter voltage in volts

printf("IC = %.2f mA\n",IC*1000);
printf("VCE = %.2f Volts\n",VCE);

disp("AC analysis for Figure 6.12");
printf("Rin'' = R1||R2||Rin where Rin=Vb/Ib\n");
printf("Vb=Ie*(re+RE)\n  =Bac*Ib*(re+RE)\n");
printf("(Rin)''= Bac*(re+RE)\n");
printf("Rout = RC||rC = RC\n as rC>>RC\n");

//decimal error w.r.t. textbook due to approximations
