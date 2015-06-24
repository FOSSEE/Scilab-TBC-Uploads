//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 157 and 158
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

//Solution

Rth=R1*R2/(R1+R2);//thevenin resistance of R1 and R2 at base in ohms
Vth=VCC*R2/(R1+R2);//thevenin voltage at base in volts

IB=(Vth-VBE)/(Rth+(B+1)*RE)*10^6;//base current in micro ampere
printf("IB = %.2f μA\n",IB);

IC=B*IB/1000;//collector current in milli ampere
printf("IC = %.2f mA\n",IC);

VCE=VCC-IC*(RL+RE)/1000;//collector to emitter voltage in volts
printf("VCE = %.3f Volts\n",VCE);

//calculation error in textbook as Vth turns out to be 1.818 V instead of 1.67 V
