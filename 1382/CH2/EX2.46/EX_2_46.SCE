// Example 2.46:R1,R2  ,Re
clc;
clear;
close;
S=2;//stability factor
Vbe=0.8;//
Vcc=20;//collector voltage in volts
Rc=5;//clollector resistance in killo ohms
Vce=11.5;// Collector to emitter voltage
Ic=1.5; //in milli amperes
Beta=50;//gain
Ib=(Ic*10^-3)/Beta;// Base current in micro ampere
Re=(Vcc-Vce-(Rc*10^3*Ic*10^-3))/(Ic*10^-3+Ib);//emitter resistance in ohms
Rb=(((1+Beta))/(Beta-1))*Re;//base resistance in killo ohms
Vr2= Vbe+(Ic+Ib*10^3)*Re*10^-3;//voltage is R2
x=(Vr2/Vcc);//Voltage
R1=((Rb)/x)*10^-3;//resistance in killo ohms
R2=((x*R1)/(1-x))*10^3;//RESISTANCE IN KILLO OHMS
disp(Re,"emitter resistance in ohms")
disp(R1,"resistance in killo ohms")
disp(R2,"resistance in killo ohms")

