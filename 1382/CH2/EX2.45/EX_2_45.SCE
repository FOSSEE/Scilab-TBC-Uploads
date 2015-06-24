// Example 2.45:R1,R2  ,Re
clc;
clear;
close;
Vbe=0.2;//
Vcc=20;//collector voltage in volts
Rc=2;//clollector resistance in killo ohms
S=10;//stability factor
Vce=10;// Collector to emitter voltage
Ic=4; //in milli amperes
Beta=50;//gain
Ib=(Ic*10^-3)/Beta;// Base current in micro ampere
Re=(Vcc-Vce-(Rc*10^3*Ic*10^-3))/(Ic*10^-3+Ib);//emitter resistance in ohms
Rb=((9*(1+Beta))/(Beta-9))*Re*10^-3;//base resistance in killo ohms
Vr2= Vbe+(Ic+Ib*10^3)*Re*10^-3;//voltage is R2
x=(Vr2/Vcc);//Voltage
R1=(Rb)/x;//resistance in killo ohms
R2=(x*R1)/(1-x);//RESISTANCE IN KILLO OHMS
S1=3;//REDUCED STABILITY FACTOR
Rb1=((3*(1+Beta))/(Beta-3))*Re*10^-3;//EFFECT OF REDUCING STABILITY FACTOR ON BASE RESISTANCE
disp(Re,"emitter resistance in ohms")
disp(R1,"resistance in killo ohms")
disp(R2,"resistance in killo ohms")
disp(Rb1,"base resistance in killo ohms effect of reducing stability factor reduces input impedence")
