//Calculate max and min value of emitter current
clear;
clc;
//soltion
//given

//At B=50

B=50;            //dc beta
Rc=75;//ohm      //resistor connected to collector
Re=100;//ohm      //resistor connected to emitter
Rb=10*10^3;//ohm      //resistor connected to base
Vcc=6;//V            //Voltage supply across the collector resistor
Vbe=0.3;//V       //for germanium
Ib=(Vcc-Vbe)/(Rb+(1+B)*Re);         //Base current
Ie=(1+B)*Ib;
Vce=Vcc-(Rc+Re)*Ie
printf("Minimum emitter current %.2f mA\n",Ie*10^3);
printf("The collector to emitter volatge is %.2f V\n",Vce);

//At B=300 

B1=300;            //dc beta
Ib1=(Vcc-Vbe)/(Rb+(1+B1)*Re);         //Base current
Ie1=(1+B1)*Ib1;
Vce1=Vcc-(Rc+Re)*Ie1
//Here Vce1= -1.4874 V but can never have negative voltage because Ie1 is wrong as it can't be more than saturation value therefore
Ie1=Vcc/(Rc+Re);

//And Vce=0 V

Vce1=0;//V
printf("Maximum emitter current %.2f mA\n",Ie1*10^3);
printf("The collector to emitter volatge(saturation) is %.0f V\n",Vce1);

