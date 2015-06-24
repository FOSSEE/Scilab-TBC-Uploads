// Example 2.54.b:Av,Ri
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
Hie=1;//in  killo ohms
Hfe=50;
Hoe=0;// in ampere per volt
Ai=-Hfe;//current gain
Ri=Hie;// Input resistance in ohms
Z1= (R1*R2)/(R1+R2);//
Zi=(Ri*Z1)/(Ri+Z1);// input resistance of amplifier stage in killo ohms
Av= Ai*(Rc/Ri);// Voltage Gain
disp(Zi,"input resistance of amplifier stage in killo ohms")
disp(Av,"Voltage gain is")
