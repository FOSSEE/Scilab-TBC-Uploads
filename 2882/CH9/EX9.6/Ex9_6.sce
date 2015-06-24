//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 307 and 308
clear;
clc;

//Given

VCC=15;//collector supply voltage in volts
RC=2.2D3;//collector resistance in ohms
RE=470;//emitter resistance in ohms
R1=33D3;//divider network resistance R1 in ohms
R2=10D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
B=150;//DC CE current gain beta
Rs=600;//source internal impedance in ohms
RL=4.7D3;//load resistance in ohms
C1=0.1D-6;//input coupling capacitance in farads
C2=50D-6;//emitter bypass capacitance in farads
C3=0.1D-6;//output coupling capacitance in farads
re=4;//a.c. emitter resistance in ohms

//Solution

Rth=1/(1/R1+1/R2+1/Rs);//thevenin resistance at base in ohms
Rin_emitter=re+Rth/B;//resistance looking into the emitter in ohms
R=1/(1/Rin_emitter+1/RE);//resistance of the equivalent RC network in ohms
fc=1/(2*%pi*R*C2);//critical frequency of the bypass network in hertz

printf("critical frequency of the bypass network fc = %d Hz",fc);
