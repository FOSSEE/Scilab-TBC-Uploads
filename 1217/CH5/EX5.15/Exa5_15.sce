// Exa 5.15
clc;
clear;
close;
// given data 
Vcc=12;//in Volt
R1=10;//in Kohm
R2=100;//in Kohm
R3=820;//in Kohm
// Let Vsat=10 volt
Vsat=10;//in volt
// part (a)
Vopp=2*R2*Vsat/R3;//in Volt
disp(Vopp,"Amplitude of triangular wave in volt is :  ")
Vopp=Vsat-(-Vsat);// in Volt
disp(Vopp,"Amplitude of square wave in volt is :  ")
// part (b)
C1=0.1;// in uF
fo=R3*1000/(4*R1*1000*R2*1000*C1*10^-6);// in Hz
disp(fo/1000,"Frequenci in KHz is :");