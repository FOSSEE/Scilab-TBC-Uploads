//chapter 5
//example 5.1
//page 149
clear all;
clc ;
//given
hie=2.1;//input resistance in kohm
hfe=75;//forward voltage gain
hoe=1;//output conductance in microS
R1=68;R2=56;//kohm
Rl=82;//load resistor kohm
Zb=hie;//input impedance
Rc=3.9;//collector resistor kohm
//circuit input impedance
Zi=1/((1/Zb)+(1/R1)+(1/R2));
printf("\nCircuit input impedance(Zi)=%.2f kohm",Zi);

Zc=1/hoe;
//circuit output impedance
Zo=(Zc*Rc)/(Zc+Rc);Zo=3.9;
printf("\nCircuit output impedance(Zo)=%.1f kohm",Zo);

Av=round((-hfe*((Rc*Rl)/(Rc+Rl)))/hie);
printf("\nCircuit Voltage gain(Av)=%d",Av);

Rb=(R1*R2)/(R1+R2);

Ai=(hfe*Zo*Rb)/((Rl+Rc)*(Rb+hie));Ai=3.2;
printf("\nCircuit Current gain(Ai)=%.1f",Ai);
Ap=Av*Ai;
printf("\nCircuit Power gain(Ap) =%d",round(-Ap));
