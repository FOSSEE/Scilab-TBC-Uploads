//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 310
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

Rin=1/(1/R1+1/R2+1/(B*re));//thevenised input network resistance in ohms
fc_input=1/(2*%pi*(Rs+Rin)*C1);//input cutoff frequency in hertz
Rth=1/(1/R1+1/R2+1/Rs);//thevenised bypass network resistance in ohms
Rin_emitter=7.7;//resistance looking into the emitter in ohms
fc_bypass=1/(2*%pi*1/(1/RE+1/Rin_emitter)*C2);//bypass cutoff frequency in hertz
Rout=RC+RL;//thevenised output network resistance in ohms
fc_output=1/(2*%pi*Rout*C3);//output cutoff frequency in hertz

s=poly(0,'s')
F=syslin('c',8*%pi^3*(fc_input*fc_bypass*fc_output)/(s+2*%pi*fc_output)/(s+2*%pi*fc_bypass)/(s+2*%pi*fc_input));
clf;
gainplot(F,100,10000,"Bode Plot for given amplifier in Example 9.8");
