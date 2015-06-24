//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 318 and 319
clear;
clc;

//Given
//Figure 9.31

VGS=12;//gate to source voltage in volts
IGSS=40D-9;//gate saturation current in amperes
VDD=12;//drain supply voltage in volts
RD=6.8D3;//drain resistance in ohms
RG=15D6;//gate resistance in ohms
Cin=0.001D-6;//input coupling capacitance in farads
Cout=0.001D-6;//output coupling capacitance in farads

//Solution

Rin_gate=VGS/IGSS;//gate input resistance in ohms
Rin=Rin_gate*RG/(Rin_gate+RG);//input resistance in ohms
fc=1/(2*%pi*Rin*Cin);//cutoff frequency in hertz
printf("Cutoff frequency for input RC network fc = %.2f Hz",fc);
