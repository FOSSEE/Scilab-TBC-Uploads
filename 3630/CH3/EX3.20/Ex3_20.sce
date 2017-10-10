clc;
//ex3.20
Vin=20; //volt
Vz=3.3; //volt
Rs=1000; //ohm
I=(Vin-Vz)/Rs; //Ampere
IZK=0.003 //Ampere
Ilmax=I-IZK; //Ampere
RLmin=Vz/Ilmax; //ohm
disp('ohm',RLmin,"RLmin="); //The answers vary due to round off error
