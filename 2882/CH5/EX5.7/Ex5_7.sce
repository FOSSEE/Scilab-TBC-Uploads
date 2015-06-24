//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 161 and 162
clear;
clc;

//Given Data
//Figure 5.23

VCC=11;//supply voltage in volts
R=220D3;//base bias resistance in ohms
RL=5.6D3;//load collector resistance in ohms
RE=1.5D3;//emitter resistance in ohms
B=75;//DC CE current gain beta
VBE=0.7;//forward voltage drop of emitter diode in volts
Cb=12D-6;//base coupling capacitor in farads
Cc=12D-6;//collector coupling capacitor in farads

//Solution

IB=(VCC-VBE)/(B*(RL+RE)+R);//base current in ampere
ICQ=B*IB*1000;//quiscent collector current in milli ampere
VCEQ=VCC-ICQ*(RE+RL)/1000;//quiscent collector to emitter voltage in volts
printf("ICQ = %.2f mA\n",ICQ);
printf("VCEQ = %.2f Volts\n",VCEQ);

//decimal approximation error w.r.t textbook
