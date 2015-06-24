//Determine the value of base resistance
clear;
clc;
//soltion
//given

B=100;            //dc beta
Rc=200;//ohm      //resistor connected to collector
Re=500;//ohm      //resistor connected to emitter
Vcc=9;//V         //Voltage supply across the collector as it is PNP so taking positive
Vce=4.5;//V       //Collector to emitter voltage
Ic=(Vcc-Vce)/(Rc+Re);
Ib=Ic/B;
Rb=(Vcc-B*Re*Ib)/Ib;
printf("The value of base resistance is %.0f kΩ",Rb/1000);
 
