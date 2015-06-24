// Example 2.54.a:Icq,Vcq
clc;
clear;
close;
Vbe=0;//
Vcc=18;//collector voltage in volts
R1=510;//resistance in killo ohms
R2=510;//resistance in killo ohms
Rc=9.1;//clollector resistance in killo ohms
Re=7.5;//emitter resistance in killo ohms
Rs=1;//Internal resistance in  ohms
Rl=1600;//Load resistance in ohms
Vb=Vcc * (R2/(R1+R2)); // vOLTAGE AT BASE
Ic= (Vb-Vbe)/Re; //in milli amperes
Vce= Vcc-(Ic*(Rc+Re)); //Colector to emitter voltage in volts
//H Paramters are
Hie=1100;//in  ohms
Hfe=2.5*10^-4;
Hoe=25*10^-6;// in ampere per volt
Ai= -Hfe/(1+Hoe*Rl);// Current gain
Ri= round(Hie+(Ai*Rl));// Input resistance in ohms
Av= Ai*(Rl/Ri);// Voltage Gain
disp(Vce,"Colector to emitter voltage In Volts")
disp (Ic,"Collector current in milli Ampere")
