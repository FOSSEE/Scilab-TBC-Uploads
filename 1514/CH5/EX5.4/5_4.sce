//chapter 5
//example 5.4
//page 158
clear all;
clc ;
//given
hie=2.1;//input resistance in kohm
hfe=75;//forward voltage gain
hic=hie;
hib=1+hfe;

Zb=2.1+(76*5);//input impedance
printf("\nInput Impedance (Zb)=%.1f kohm",Zb);

//Circuit input  impedance
Zi=1/((1/Zb)+(1/10)+(1/10));
printf("\nCircuit input impedance(Zi)=%.2f kohm",Zi);

//output impedance
Ze=1000*((2.1+(1/(1.2)))/76);
printf("\nOutput impedance(Ze)=%.1f ohm",Ze);

//Circuit output impedance
Zo=(Ze*5*1000)/(Ze+5*1000);
printf("\nCircuit output impedance(Zo)=%.1f ohm",Zo);

Av=1;
printf("\nVoltage gain is approximately %d",Av);


