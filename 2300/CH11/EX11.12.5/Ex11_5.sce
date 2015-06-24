//scilab 5.4.1
//Windows 7 operating system
//chapter 11 Sinusoidal oscillator and multivibrators
clc
clear
f=30//f=frequency of oscillation of a Wien-bridge oscillator in Hz
C=(500*10^(-12))//C=capacitance in farad
//f=1/2*%pi*R*C//R=resistance in ohm
R=1/(2*%pi*f*C)
disp("Mega ohms",R/10^6,"Resistance needed to span the frequency range,R=")//converting R in terms of Mega ohms
//C1=50pF C2=500pF where C1,C2 are variable capacitances in a Wien bridge oscillator
//ratio of capacitance=(1:10)
//frequency range is 30 Hz to 300 Hz with R=10.6 Megaohms
//for the next frequency range from 300 Hz to 3 kHz ,new R=(10.6/10)=1.06 Megaohm
//for frequency range 3 kHz to 30kHz,R=1.06/10=106 Kilo-ohm
//So,three values of R are 10.6 Megaohm,1.06 Megaohm,106 Kilo ohm
A=6//A=gain of amplifier
//R2/(R1+R2)=(1/3)-(1/A)=(1/3)-(1/6)
//1+(R1/R2)=6
//Hence R1/R2=5
//R3=(R1/R2)
R3="5:1"
disp(R3,"The ratio of the resistances in the other arms of the bridge,R1/R2 is =")
