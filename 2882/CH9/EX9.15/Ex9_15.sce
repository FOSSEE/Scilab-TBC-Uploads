//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 319
clear;
clc;
//Given
//Figure 9.31
//Given data is from Fig 9.31
VGS=12;//gate to source voltage in volts
IGSS=40D-9;//gate saturation current in amperes
RD=6.8D3;//drain resistance in ohms
RG=15D6;//gate resistance in ohms
Cout=0.001D-6;//output coupling capacitance in farads

//Solution

Rin_gate=VGS/IGSS;//gate input resistance in ohms
Rin=Rin_gate*RG/(Rin_gate+RG);//input resistance in ohms
RL=Rin;//load resistance is input resistance of next stage in ohms
CC2=Cout;//output RC network capacitance is equal to Cout
//The following equation is given as Equation 9.45 in textbook
fc=1/(2*%pi*(RD+RL)*CC2);//cutoff frequency in hertz
printf("Critical frequency for output RC network fc'' = %.2f Hz",fc);

//Error in decimal approximation in textbook.
