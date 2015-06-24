//chapter 5
//example 5.3
//page 151
clear all;
clc ;
//given
R1=39;//kohm
hie=1.2;//input resistance in kohm
Rc=1.8;//collector resistor kohm
R2=47;//kohm
hoe=1.5;//microS
Rl=68;//load resistor kohm
hfe=80;
//Circuit input impedance
Zi=(R1*hie)/(R1+hie);
printf("\nCircuit input impedance=%.2f kohm",Zi);

//Circuit output impedance
Zo=1/((hoe/1000)+(1/Rc)+(1/R2));
printf("\nCircuit output impedance=%.2f kohm",Zo);

//voltage gain
Av=round((hfe*(1/(1/R2+1/Rc+1/Rl)))/hie);
printf("\nvoltage gain=%d",Av);

