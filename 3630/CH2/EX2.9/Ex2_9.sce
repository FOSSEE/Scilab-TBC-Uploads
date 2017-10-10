clc;
//ex2.9
Vs=50; //Volt
Vd=0.7; //volt
RL=200; //ohm
If=(Vs-Vd)/RL;  //Ampere//forward current in the circuit
Io=(20/100)*If+If; //Ampere//Average forward current rating 20% greater than calculated value of If
disp('mAmp',If*1000,"If="); //The answers vary due to round off error
disp('mAmp',Io*1000,"Io=") //The answers vary due to round off error
