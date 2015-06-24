//chapter 5
//example 5.6
//page 167
clear all;
clc ;
//given
hoe=1;
hie=2.1;//input resistance in kohm
hfe=75;//forward voltage gain
hib=(1000*hie)/(1+hfe);
hib=27.6;
hfb=hfe/(1+hfe);
Rc=1.8;//collector resistor kohm
Zc=1/hoe;
hoe=1;//output conductance in microS

Ze=hib;
printf("\nInput Impedance(Ze)=%.1f ohm",Ze);

//circuit input impedance
Zi=(Ze*5*1000)/(Ze+5*1000);
printf("\nCircuit Input Impedance(Zi)=%.1f ohm",Zi);

//circuit output impedance
Zo=(Zc*Rc)/(Zc+Rc);Zo=10;
printf("\nCircuit Output Impedance(Zo)=%d kohm",Zo);

//Voltage gain
Av=1000*(hfb*Zo)/Ze;
printf("\nCircuit Voltage Gain=%d",ceil(Av));

