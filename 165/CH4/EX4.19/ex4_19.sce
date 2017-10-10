//Example 4.19
close;
clc;

e=10;                 //in volts
R1=10000;             //In ohms
R2=10000;             //In ohms
Ifsd=100*10^-6;       //in amperes
Range=10;             //in volts
Sdc=1/Ifsd;           //Sensitivity
Rs=Sdc*Range;         //Multiplier Resistence

//Voltage across R2
R=R2*Rs/(R2+Rs);
ER2=e*R/(R1+R);
printf('\nThe reading obtained by DC voltmeter = %.2f V\n',ER2)

//Reading obtained using half wave rectifier
Shw=0.45*Sdc;
Rs=Shw*Range;
R=R2*Rs/(R2+Rs);
ER2hw=e*R/(R1+R);
printf('\nReading obtained using half wave rectifier = %.2f V\n',ER2hw)

//Reading obtained using full wave rectifier
Sfw=0.90*Sdc;
Rs=Sfw*Range;
R=R2*Rs/(R2+Rs);
ER2fw=e*R/(R1+R);
printf('\nReading obtained using full wave rectifier = %.2f V\n',ER2fw)