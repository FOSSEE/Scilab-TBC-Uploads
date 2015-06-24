//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 308
clear;
clc;

//Given

VCC=12;//collector supply voltage in volts
RE=1D3;//emitter resistance in ohms
R1=47D3;//divider network resistance R1 in ohms
R2=15D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
B=100;//DC CE current gain beta
Rs=1000;//source internal impedance in ohms
CE=100D-6;//emitter bypass capacitance in farads
re=11.5;//a.c. emitter resistance in ohms

//Solution

Rth=1/(1/R1+1/R2+1/Rs);//thevenin resistance at base in ohms
Rin_emitter=re+Rth/B;//resistance looking into the emitter in ohms
R=1/(1/Rin_emitter+1/RE);//resistance of the equivalent RC network in ohms
fc=1/(2*%pi*R*CE);//critical frequency of the bypass network in hertz

printf("critical frequency of the bypass network fc = %.2f Hz",fc);

//decimal approximation taken here
