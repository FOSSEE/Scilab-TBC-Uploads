
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data
b=49;//b=dc current gain of the common emitter transistor
Vbe=0.2;    //Volatge between base and emitter in V
Vcc=10;     //Volatge source applied at collector in V4
Vce=5;      //Collector to emitter voltage in V
Ic=4.9;     //collector current in mA
Rl=1;      //load resistance in kilo ohms
S=10;       //stability factor

Ib=Ic/b;    //base current in mA
Re=((Vcc-Vce-(Ic*Rl))/(Ic+Ib))*1000;       //Resistance at emitter in ohms
disp('ohms',Re,'Re=');
//S=((1+b)*(1+(RT/Re)))/(1+b+(RT/Re)) 
RT=((S-1)*Re)/(1-(S/(1+b)))//RT=Thevenin resistance =(R1*R2)/(R1+R2)
VT=(Ib*(10^-3)*RT)+Vbe+((Ib+Ic)*(10^-3)*Re)//VT=Thevenin voltage=(R2*Vcc)/(R1+R2)
// R2/(R1+R2)=VT/Vcc
R1=(RT*Vcc)/VT
format("v",6)
disp("kilo ohm",R1/10^3,"R1=")
R2=((VT/Vcc)*R1)/(1-(VT/Vcc))
disp("ohm",R2,"R2=")


