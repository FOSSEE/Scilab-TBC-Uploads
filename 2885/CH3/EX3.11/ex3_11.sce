//Calculate output voltage and current through load and voltage across series resistor and current and power dissipated in zener diode
clear;
clc;
//soltion
//given
Vi=110;//V       //input voltage
Rl=6*10^3;// ohm    //load resistance
Rs=2*10^3;//ohm       //series resistance
Vz=60;//V        //Zener voltage
V=Vi*Rl/(Rs+Rl);

//This V>Vz therefore Zener diode is ON

Vo=Vz;          //output voltage
Il=Vo/Rl;       //Current through load resistance
Vs=Vi-Vo;       //Voltage drop across the series resistor
Is=Vs/Rs         //current through the series resistor
Iz=Is-Il        ///By applying kirchhoff's law
Pz=Vz*Iz        //Power dissipated accross zener diode

printf("The output voltage is %.0f V\n",Vo);
printf("The current through load resistance is %.0f mA\n",Il*1000);
printf("Voltage across series resistor is %.0f V\n",Vs)
printf("Current in zener diode is %.0f mA\n",Iz*1000)
printf("Power dissipated by zener diode %.0f mW",Pz*1000);
