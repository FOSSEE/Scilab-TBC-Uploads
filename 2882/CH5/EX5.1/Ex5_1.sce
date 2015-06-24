//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 147
clear;
clc;

//Given Data
//Figure 5.4

B=100;//current gain of CE configuration
VCC=15;//biasing voltage in volts
R=180D3;//biasing resistance in ohms
Rl=1.5D3;//load resistance in ohms
VBE=0.7;//forward drop of emitter diode in volts

//Solution

disp("(i)");
IB=(VCC-VBE)/R*10^6;//base current in micro-amperes
IC=B*IB/1000;//colelctor current in milli-amperes
 
printf("IB = %.2f μA\nIC = %.2f mA\n",IB,IC);

disp("(ii)");
VCE=VCC-IC*Rl/1000;//volatage between collector and emitter in volts

printf("VCE = %.1f  Volts",VCE);

disp("(iii)");
VB=VBE;//base voltage w.r.t. ground in volts
VC=VCE;//coollector voltage w.r.t. ground in volts

printf("VB = %.1f Volts\nVC = %.1f Volts\n",VB,VC);

disp("(iv)");
VCB=VC-VB;//voltage between collector and base in volts
VBC=-VCB;//voltage between base and collector in volts

printf("VCB = %.1f Volts\n",VCB);
if VBC<0 then
    printf("Base collector junction is reverse biased.\n")
end
