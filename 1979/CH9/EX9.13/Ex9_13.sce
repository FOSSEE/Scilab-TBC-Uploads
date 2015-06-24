//chapter-9 page 414 example 9.13
//==============================================================================
clc;
clear;

//For a negative resistance parametric amplifier
fs=2*10^9;//Signal Frequency in Hz
fp=12*10^9;//pump Frequency in Hz
fi=10*10^9;//idler Frequency in Hz
fd=5*10^9;//Frequency in Hz
Ri=1000;//o/p resistance of idler generator in ohms
Rg=1000;//o/p resistance of signal generator in ohms
RTs=1000;//total series resistance at fs in ohms
RTi=1000;//total series resistance at fi in ohms
r=0.35;
rQ=10;//figure of merit
Td=300;//Avg Diode Temperature in K
T0=300;//Ambient Temperature in K
C=0.01*10^(-12);//Capacitance in F

//CALCULATION
ws=2*(%pi)*fs;
wi=2*(%pi)*fi;
R=((r^2)/(ws*wi*RTi*C^2));//Equivalent noise resistance in ohms
a=(R/RTs);
G=((4*fi*a*Rg*Ri)/(fs*RTs*RTi*(1-a)^2));//Gain
GdB=10*log10(G);//Gain in dB
F=(1+((2*Td/T0)*((1/rQ)+(1/rQ)^2)));//Noise Figure 
FdB=10*log10(F);//Noise Figure in dB
BW=((r/2)*(sqrt(fd/(fs*G))));

//OUTPUT
mprintf('\nEquivalent noise resistance is R=%4.1f ohms\nGain is GdB=%2.1f dB\nNoise Figure is FdB=%1.2f dB \nBandWidth is BW=%1.3f',R,GdB,FdB,BW);

//=========================END OF PROGRAM===============================

//Note: Check the Bandwidth answer is once It should be 0.027
