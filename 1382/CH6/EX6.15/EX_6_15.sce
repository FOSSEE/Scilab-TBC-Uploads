// Example 6.15;//INPUT IMPEDANCE
clc;
clear;
close;
Beta=100;//gain
Rl=18.6;//load resistance in killo ohms
Re=9.3;//emitter resistance in killo ohms
Vbe=0.7;//
Vcc=10;//collector voltage in volts
R1=10;//resistance in killo ohms
R2=10;//resistance in killo ohms
V2= Vcc*(R2/(R1+R2));// voltage at resistor R2 
Ve=V2-Vbe;//volate at emitter
Ie=Ve/Re;// Emitter current in milli ampere
re=(25/Ie);//AC emitter resistance
Re=(Rl*Re)/(Rl+Re);//effective emitter resistance in killo ohms
Zib=Beta*(Re*10^3+re)*10^-3;//INPUT IMPEDANCE TO THE BASE IN KILLO OHMS
x=(R1*R2)/(R1+R2);//resistance in killo ohms
Zi=(Zib*x)/(Zib+x);//input impedance of the emitter follower in killo ohms
disp(Zi,"input impedance of the emitter follower in killo ohms is")
