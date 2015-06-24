//Calculate the value of all three current Ie and Ic and Ib
clear;
clc;
//soltion
//given
B=90;            //dc beta
Rc=1*10^3;//ohm      //resistor connected to collector
Rb=500*10^3;//ohm      //resistor connected to base
Re=500;//ohm      //resistor connected to emitter
Vcc=9;//V            //Voltage supply across the collector resistor
Ib=Vcc/(Rb+B*Re);         //Base current
Ic=B*Ib;         //Colletor current
Ie=Ic+Ib;        //Emitter current
printf("Base current = %.1f uA \nCollector current = %.3f mA \nEmitter current = %.4f mA",Ib*10^6,Ic*10^3,Ie*10^3);
 
