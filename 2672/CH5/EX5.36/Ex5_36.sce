//Example 5_36
clc;
clear;
close;
format('v',5);
//given data : 
Eta=1;//for Ge
T=300;//K
VT=0.026;//V(Thermal Voltage)
VF=5;///V
//I=I0;///given
IByI0=1;//ratio
//Using I=I0*(exp(V/VT)-1)
V=log(IByI0+1)*VT;//V
V2=VF-V;//V(Voltage across 2nd diode)
disp(V2,"(a) Voltage across each junction(V) : ");
//Part (b)
format('v',6);
Vz=4.9;//V
Vrb=Vz;//V(Across reverse biased diode)
V2=VF-Vrb;//V
I0=6;//micro A
I=I0*(exp(V2/VT)-1);//micro A
disp(I,"(b) Current in the circuit(micro A) : ");
//Note : Answer in the textbook is not accurate.
