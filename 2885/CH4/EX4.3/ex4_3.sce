//Determine the base current
clear;
clc;
//soltion
//given
a=0.96;            //dc alpha
Rc=2*10^3;//ohm      //resistor across collector
Vc=4;//V            //Voltage drop across the collector resistor
Ic=Vc/Rc;         //Colletor current
Ie=Ic/a;          //Emmiter current
Ib=Ie-Ic;         //Base current
printf("The base current is %.0f uA",Ib*10^6)
