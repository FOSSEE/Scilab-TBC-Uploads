//determine Q point in collector to base bias circuit
clear;
clc;
//soltion
//given
B=100;            //dc beta
Rc=500;//ohm      //resistor connected to collector
Rb=500*10^3;//ohm      //resistor connected to base
Vcc=10;//V            //Voltage supply across the collector resistor
Ib=Vcc/(Rb+B*Rc);         //Base current
Ic=B*Ib;         //Colletor current
Ics=Vcc/Rc;       //Colletor saturation current

//Actual Ic is the smaller of the above two values

Vce=Vcc-(Ic+Ib)*Rc;
printf("The Q point is (%.1f V, %.1f mA)",Vce,Ic*1000);
