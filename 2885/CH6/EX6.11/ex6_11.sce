//Calculate Q point in voltage divider
clear;
clc;
//soltion
//given
B=100;            //dc beta
Rc=2*10^3;//ohm      //resistor connected to collector
R1=10*10^3;//ohm      //voltage divider resistor 1
R2=1*10^3;//ohm      //voltage divider resistor 2
Re=200;//ohm      //resistor connected to emitter
Vcc=10;//V            //Voltage supply across the collector resistor
Vbe=0.3;//V          //base to emitter voltage

I=Vcc/(R1+R2);       //current through voltage divider
Vb=I*R2;        //voltage at base
Ve=Vb-Vbe;
Ie=Ve/Re;
Ic=Ie        //approaximating Ib is nearly equal to 0
Vc=Vcc-Ic*Rc;
Vce=ceil(Vc)-Ve; 
printf("The Q point is (%.1f V, %.0f mA)",Vce,Ic*1000);

Ibc=I/20;     //critical value of base current
Ib=Ic/B;      //actual base current

//Since Ib < Ibc, hence assumption is alright
