clc;
Vcc=12; //Volt
R1=300; //Ohm
R2=100; //ohm
I1=Vcc/(R1+R2); //Ampere
Icq=0.103; //Ampere
Icc=Icq+I1; //Ampere
Ps=Vcc*Icc; //Watt
disp('W',Ps,"Ps=");//The answers vary due to round off error
