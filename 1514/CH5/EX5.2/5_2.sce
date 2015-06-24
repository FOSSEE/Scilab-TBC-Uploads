//chapter 5
//example 5.2
//page 150
clear all;
clc ;
//given
R1=68;R2=56;//kohm
Rc=3.9;//collector resistor kohm
Zb=2.1+(76*4.7);//input impedance
printf("\nInput Impedance(Zb)=%.1f kohm",Zb);

//circuit input impedance
Zi=1/((1/Zb)+(1/R1)+(1/R2));
printf("\nCircuit input impedance(Zi)=%.1f kohm",Zi);
hfe=75;Rl=82;

//circuit output impedance
Zo=Rc;
printf("\nCircuit output impedance(Zo)=%.1f kohm",Zo);

Av=((-hfe*(Rc*Rl)/(Rc+Rl))/Zb);
Av=-0.78;
printf("\nCircuit voltage gain(Av)=%.2f",Av);

Ai=(75*3.9*30.07)/((82+3.9)*(30.7+359.3));
Ai=0.27;
printf("\nCircuit current gain(Ai)=%.2f",Ai);
Ap=Av*Ai;
printf("\nCircuit Power gain(Ap) =%.2f",(-Ap));
