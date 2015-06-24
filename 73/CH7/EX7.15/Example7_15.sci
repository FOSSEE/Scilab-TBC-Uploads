//Chapter 7_Operational Amplifier Characteristics
//Caption : Slew rate and Fmax
//Example7.15: For type 741 Op-Amp following parameter are given.Quiescent collector current Ic=9.5 uA, Cc=30 pF. Peak amplitude of input voltage Vm=15V.
//a)Determine the slew rate
//b)Determine full power bandwidth Fmax for the slew rate as obtained from part (a).
clear;
clc;
//a)Solution:
Ic=9.5*10^-6;// operating collector current in A
Cc=30*10^-12;// parasitic capacitance
SlewRate=2*Ic/Cc;
disp('V/us',SlewRate/10^6,'Slew rate is:')
//b)Solution:
Vm=15;//amplitude of input voltage in Volt
Fmax=SlewRate/(2*%pi*Vm);// full power bandwidth 
disp('kHz',Fmax/10^3,'full power bandwidth Fmax for  the Slew Rate obtained above is:')