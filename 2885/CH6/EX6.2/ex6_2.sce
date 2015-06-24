//Determine the Q point
clear;
clc;
//soltion
//given
B=150;            //dc beta
Rc=1*10^3;//ohm      //resistor connected to collector
Rb=100*10^3;//ohm      //resistor connected to base
Vcc=10;//V            //Voltage supply across the collector resistor
Vbe=0.7;//V          //base to emitter voltage
Ib=(Vcc-Vbe)/Rb;         //Base current
Ic=B*Ib;         //Colletor current
Ics=Vcc/Rc;       //Colletor saturation current

//Actual Ic is the smaller of the above two values i.e. Ic(sat) and since the transistor is in saturation mode therefore Vce will become 0

Vce=0;
printf("The Q point is (%d V, %.0f mA)",Vce,Ics*1000);
