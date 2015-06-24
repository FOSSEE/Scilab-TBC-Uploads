//chapter 5
//example 5.5
//page 159
clear all;
clc ;
//given
Rl=12;//load resistor kohm
hic=2.1;//input resistance in kohm
hfc=76;//forward voltage gain
Re=5;//kohm
R1=10;R2=10;//kohm

Zb=hic+hfc*((Re*Rl)/(Re+Rl));
printf("\ninput impedance(Zb) =%d kohm",Zb);

//ckt ip impedance
Zi=1/((1/Zb)+(1/R1)+(1/R2));
printf("\ncircuit input impedance(Zi)=%.1f kohm",Zi);
