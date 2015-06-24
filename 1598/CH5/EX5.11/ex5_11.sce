clc;
V=2;     //in volts
R1=30;   //resisitance in Ohm
R2=60;  //resistance in Ohm
Rp=(30*60)/(30+60);  //calculating parallel resistance
disp(Rp,"Resisitance in Ohm = ");  //displaying result
I=V/Rp;     //Ohm's law
disp(I,"Current in Ampere = ");  //displaying result