//Calculate the collector current and change in it if B is changed by three times of previous B
clear;
clc;
//soltion
//given
B=50;            //dc beta
Rc=2*10^3;//ohm      //resistor connected to collector
Rb=300*10^3;//ohm      //resistor connected to base
Vcc=9;//V            //Voltage supply across the collector as it is PNP so taking positive
Ib=Vcc/(Rb+B*Rc);         //Base current
Ic=B*Ib;         //Colletor current
printf("Collector current (B=50)= %.3f mA\n",Ic*1000);
//Now B=150
B=3*B;      //three times of previous B
Ib1=Vcc/(Rb+B*Rc);         //Base current
Ic1=B*Ib1;         //Colletor current
printf("Collector current (B=150)= %.2f mA\n",Ic1*1000);
printf("The factor at which collector current increases %.0f",Ic1/Ic);
