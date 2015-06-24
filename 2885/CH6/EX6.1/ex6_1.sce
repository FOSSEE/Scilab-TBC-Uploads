//Determine the Q point
clear;
clc;
//soltion
//given
B=50;            //dc beta
Rc=2.2*10^3;//ohm      //resistor connected to collector
Rb=270*10^3;//ohm      //resistor connected to base
Vcc=9;//V            //Voltage supply across the collector resistor
Vbe=0.7;//V          //base to emitter voltage
Ib=(Vcc-Vbe)/Rb;         //Base current
Ic=B*Ib;         //Colletor current
Ics=Vcc/Rc;       //Colletor saturation current

//Actual Ic is the smaller of the above two values

Vce=Vcc-Ic*Rc;
printf("The Q point is (%.2f V, %.1f mA)",Vce,Ic*1000);
//In book Vce = 5.7 V because of approaximation
