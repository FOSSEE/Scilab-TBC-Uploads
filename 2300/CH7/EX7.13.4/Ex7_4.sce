
//scilab 5.4.1
//windows 7 operating system
//chapter 7:Junction Transistor Characteristics
clc;
clear;
//given data
b=125;//b=forward current transfer ratio or dc current gain
Vbe=0.6;    //base to emitter voltage in V

Ib=(10-Vbe)/(310*10^3);     //base current in A
disp('mA',Ib*10^3,'Ib=');
Ic=b*Ib;        //collector current in A
disp('mA',Ic*10^3,'Ic=');
Vce=20-(Ic*5000);       //collector to emitter voltage
disp('V',Vce,'Vce=');
