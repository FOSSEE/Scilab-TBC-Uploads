//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 170 and 171
clear;
clc;

//Given Data
//Figure 5.30

B=100;//DC CE current gain beta
VCC=18;//collector supply voltage in volts
VEE=9;//emitter supply voltage in volts
VBE=0.7;//forward voltage drop of emitter diode in volts
RE=30D3;//emitter resistance in ohms
R=15D3;//base bias resistance in ohms
RL=15D3;//collector load resistance in ohms

//Solution

disp("(i)");
IE=(VEE-VBE)/(RE+R/B);//emitter current in amperes
printf("IE = %.3f mA\n",IE*1000);

disp("(ii)");
IC=IE;//collector current in amperes
printf("IE = %.3f mA\n",IC*1000);

disp("(iii)");
VC=VCC-IC*RL;//collector to groud voltage in volts
printf("VC = %.2f Volts\n",VC);

disp("(iv)");
VE=-(IC*R/B+VBE);//emitter to groud voltage in volts
printf("VE = %.2f Volts\n",VE);

disp("(v)");
VCE=VC-VE;//collector to emitter voltage in volts
printf("VCE = %.2f Volts\n",VCE);

disp("(vi)");
S=(1+R/RE)/(1+R/B/RE);//stability factor S
printf("S = %.4f\n",S);

//calculations are carried out taking RL=9 kilo-ohm instead of 15 kilo-ohm as in Figure 5.30 in textbook
//resulting in change in values of VC and VCE
