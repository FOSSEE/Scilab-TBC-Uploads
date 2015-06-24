//Determine the collector current at two different B
clear;
clc;
//soltion
//given

//At B=50

B=50;            //dc beta
Rc=2;//ohm      //resistor connected to collector
Re=1000;//ohm      //resistor connected to emitter
Rb=300*10^3;//ohm      //resistor connected to base
Vcc=9;//V            //Voltage supply across the collector resistor
Ib=Vcc/(Rb+B*Re);         //Base current
Ic=B*Ib;         //Colletor current
printf("the collector current at (B=50)= %.3f mA\n",Ic*1000);

//At B=150

B1=150;            //dc beta
Ib1=Vcc/(Rb+B1*Re);         //Base current
Ic1=B1*Ib1;         //Colletor current
printf("the collector current at (B=150)= %.0f mA\n",Ic1*1000);
printf("The factor at which collector current increases %.2f",Ic1/Ic);

//IN BOOK Ic(AT B=50)= 1.25 mA and Ic1/Ic=2.4 DUE TO APPROAXIMATION
