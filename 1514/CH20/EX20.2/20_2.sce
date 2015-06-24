//chapter 20
//example 20.2
//page 638
clear;
clc ;
//given
R1=4.7;R2=10;
Vcc=9;//supply voltage
L=100;//inductance microH
Vdmin=(Vcc*R1)/(R1+R2);
Vdmax=Vcc;
C1=100;C2=15//capacitance from hyperabrupt junction device characteristics at 2.9,9V resp in pF
//At resonance,for Vdmin
f1=1000/(2*%pi*sqrt(L*C1));//MHz
f2=1000/(2*%pi*sqrt(L*C2));//MHz
printf("\n The resonance frequency range is %.1f MHz to %0.1f MHz",f1,f2)

