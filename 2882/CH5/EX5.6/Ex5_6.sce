//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 158 and 159
clear;
clc;

//Given Data
//Figure 5.19

VCC=20;//supply voltage in volts
R1=22D3;//bias resistance in ohms
R2=2.2D3;//bias resistance in ohms
RL=10D3;//load collector resistance in ohms
RE=820;//emitter resistance in ohms
B=100;//DC CE current gain beta
VBE=0.7;//forward voltage drop of emitter diode in volts
Cb=15D-6;//base coupling capacitor in farads
Ce=40D-6;//emitter bypass capacitor in farads
Cc=15D-6;//collector coupling capacitor in farads
ICO=1D-6;//leakage current in amperes

//Solution

Rth=R1*R2/(R1+R2);//thevenin resistance of R1 and R2 at base in ohms
Vth=VCC*R2/(R1+R2);//thevenin voltage at base in volts
IB=(Vth-VBE)/(Rth+(B+1)*RE);//base current in ampere
IC=B*IB;//collector current in ampere

S1=(B+1)*(1+Rth/RE)/(1+B+Rth/RE);//Stability factor S of IC against ICO

S2=-B/(Rth+RE+B*RE);//Stability factor S' of IC against VBE

S3=1/(B*(1+B))*(IC*((Rth+RE)*(1+B)-B*S1*RE)/(RE+Rth)-S1*ICO);//Stability factor S'' of IC against BETA

printf("S=δIC/δICO=%.3f\n",S1);
printf("S''=δIC/δVBE=%.3e\n",S2);
printf("S''''=δIC/δB=%e\n",S3);

//error in calculation in textbook for IC and S''
