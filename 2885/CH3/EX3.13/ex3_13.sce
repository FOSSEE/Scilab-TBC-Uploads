//determine value of the series resistor and wattage rating
clear;
clc;
//soltion
//given
Vi=12;//V       //input voltage
Vz=7.2;//V        //Zener voltage
Izmin=10*10^-3;//A             //min current through zener diode
Ilmax=100*10^-3;//A            //max current through load
Ilmin=12*10^-3;//A            //min current through load

Vs=Vi-Vz;       //Voltage drop across the series resistor
Is=Izmin+Ilmax;     //Current through the series resistor
Rs=Vs/Is;
printf("The series resistor so that 10mA current flow through zener diode is %.1f Ω\n",Rs);

Izmax=Is-Ilmin;      //max zener through zener diode
Pmax=Izmax*Vz;
printf("The maximum wattage rating is %.1f mW",Pmax*1000);
