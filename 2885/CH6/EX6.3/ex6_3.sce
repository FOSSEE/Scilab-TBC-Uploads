//Determine Rb and percentage change in collector current due to temperature rise
clear;
clc;
//soltion
//given

//Calculating the base resistance
B=20;            //dc beta
Rc=1*10^3;//ohm      //resistor connected to collector
Ic=1*10^-3;//A       //collector current
Vcc=6;//V            //Voltage supply across the collector resistor
Vbe=0.3;//V       //for germanium
Icbo=2*10^-6;//A       //collector  to base leakage current

Ib=(Ic-(1+B)*Icbo)/B;
Rb=(Vcc-Vbe)/Ib;

printf("The value of resistor Ib is %.4f kΩ = 120 kΩ \n",Rb/1000);

Rb=120*10^3;//ohm        approax

//Now when temperature rise
Icbo=10*10^-6;//A       //collector  to base leakage current
B=25;            //dc beta
Ic1=B*Ib+(B+1)*Icbo;          //changed collector current
perc=(Ic1-Ic)*100/Ic;        //percentage increase
printf("The percentage change in collector current is %.0f percent",perc);
