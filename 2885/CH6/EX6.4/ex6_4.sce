//Determine the Q point at two different B
clear;
clc;
//soltion
//given

//At B=50

B=50;            //dc beta
Rc=2*10^3;//ohm      //resistor connected to collector
Rb=300*10^3;//ohm      //resistor connected to base
Vcc=9;//V            //Voltage supply across the collector resistor
Ib=Vcc/Rb;         //Base current
Ic=B*Ib;         //Colletor current
Ics=Vcc/Rc;       //Colletor saturation current

//Actual Ic is the smaller of the above two values

Vce=Vcc-Ic*Rc;
printf("The Q point (At B=50) is (%.0f V, %.1f mA)\n",Vce,Ic*1000);

//At B=150

B1=150;            //dc beta
Ic1=B*Ib;         //Colletor current
Ics1=Vcc/Rc;       //Colletor saturation current

//Actual Ic is the smaller of the above two values i.e. Ic(sat) and since the transistor is in saturation mode therefore Vce will become 0

Vce=0;
printf("The Q point (At B=150) is (%d V, %.1f mA)\n",Vce,Ics*1000);

printf("The factor at which collector current increases %.0f",Ics1/Ic);
