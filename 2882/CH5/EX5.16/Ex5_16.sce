//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 168
clear;
clc;

//Given Data
//Figure E5.15

VCC=15;//supply voltage in volts
RL=1.5D3;//collector load resistance in ohms
B=100;//DC CE current gain beta
R=82D3;//base collector parallel resistance in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts

//Solution

IC=(VCC-VBE)/(RL+R/B);//collector current in amperes
VCE=VCC-IC*RL;//collector to emitter voltage in volts and VCE = VC as VE = 0 V since emitter is grounded
disp("Q - point");
printf("IB = %.2f μA\n",IC*1D6/B);
printf("IC = %.2f mA\n",IC*1000);
printf("VCE = %.2f Volts\n",VCE);

disp("Stability factors");

S1=(B+1)/(1+(B*RL)/(RL+R));//stability factor S
printf("S = %.2f\n",S1);

S2=-B/(R+RL+B*RL);//Stability factor S'
printf("S'' = %.3f mA/V\n",S2*1000);

S3=(VCC-VBE-IC*RL)/(R+RL/(1+B));//Stability factor S''
printf("S'''' = %.2f μA\n",S3*1D6);

//decimal approximation error w.r.t textbook
