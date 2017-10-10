clc;
Vcc=15; //Volt
R1=1000; //Ohm
R2=170; //Ohm
R3=1000; //Ohm
I1=Vcc/(R1+R2+R3); //Ampere
RL=10; //Ohm
Icave=Vcc/(2*3.14*RL);//Ampere
Icc=Icave+I1; //Ampere
Ps=Vcc*Icc; //Watt
disp('W',Ps,"Ps=");//The answers vary due to round off error


