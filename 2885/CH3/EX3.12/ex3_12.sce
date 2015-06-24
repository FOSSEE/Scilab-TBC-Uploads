
//Calculate max and min values of zener diode current
clear;
clc;
//soltion
//given
Vimin=80;//V       //minimum input voltage
Vimax=120;//V       //maximum input voltage
Rl=10*10^3;// ohm    //load resistance
Rs=5*10^3;//ohm       //series resistance
Vz=50;//V        //Zener voltage
V=Vimin*Rl/(Rs+Rl);

//This V>Vz therefore Zener diode is ON

//For minimum value of zener diode

Vo=Vz;          //output voltage
Vs=Vimin-Vo;       //Voltage drop across the series resistor
Is=Vs/Rs         //current through the series resistor
Il=Vo/Rl;       //Current through load resistance
Izmin=Is-Il;
printf("\nMinimum values of zener diode current is %.0f mA\n",Izmin*1000);

//For maximum value of zener diode

Vo=Vz;          //output voltage
Vs=Vimax-Vo;       //Voltage drop across the series resistor
Is=Vs/Rs         //current through the series resistor
Il=Vo/Rl;       //Current through load resistance
Izmax=Is-Il;
printf("Maximum values of zener diode current is %.0f mA",Izmax*1000);
