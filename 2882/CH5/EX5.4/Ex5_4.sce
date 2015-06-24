//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 153 and 154
clear;
clc;

//Given Data
//Figure 5.14

VCC=15;//supply voltage in volts
RB=330D3;//base resistance in ohms
RL=2D3;//load collector resistance in ohms
RE=820;//emitter resistance in ohms
B=75;//DC CE current gain beta
VBE=0.7;//forward voltage drop of emitter diode in volts
Cb=12D-6;//base coupling capacitor in farads
Ce=50D-6;//emitter bypass capacitor in farads

//Solution

disp("(i)");
IB=(VCC-VBE)/(RB+B*RE)*10^6;//base current in micro ampere
printf("IB = %.2f μA\n",IB);

disp("(ii)");
IC=B*IB/1000;//collector current in milli ampere
printf("IC = %.2f mA\n",IC);

disp("(iii)");
VCE=VCC-IC*(RL+RE)/1000;//collector to emitter voltage in volts
printf("VCE = %.1f Volts\n",VCE);

disp("(iv)");
VC=VCC-IC*RL/1000;//collector to ground voltage in volts
printf("VC = %.2f Volts\n",VC);

disp("(v)");
VE=VC-VCE;//emitter to ground voltage in volts
printf("VE = %.2f Volts\n",VE);

disp("(vi)");
VB=VBE+VE;//base to ground voltage in volts
printf("VB = %.2f Volts\n",VB);

disp("(vi)");
VCB=VC-VB;//collector to base voltage in volts
printf("VCB = %.1f Volts\n",VCB);

if VCB>0  
    printf("VBC is less than zero indicating collector base juntion is reverse biased.")
end

//error in answers w.r.t. text book as BETA in figure is 75 and in calculations is 76
//here BETA is taken as 75
//also in (iv) answer is not printed in textbook
