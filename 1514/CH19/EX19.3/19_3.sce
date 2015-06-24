//chapter 19
//example 19.3
//page 597
clear all;
clc ;
//given
Vcc=6;//supply voltage V
Ib=200;//base current when Xtor is ON microA
Rdark=100;//cell dark resistance kohm
//when Xtor is ON 
Vcell=Vcc+0.7;//for Si Xtor
Icell=1000*Vcell/Rdark;//microA
//current through R1
IR1=Icell+Ib;
VR1=Vcc-0.7;
R1=1000*VR1/IR1;
//When Xtor is Off,base <=0V(Ib=0)
VR1=Vcc;
IR1=1000*VR1/R1;//microA
//since Ib=0
Icell=IR1;
Vcell=Vcc;
Rcell=1000*Vcell/Icell;
printf("\nR1=%d kohm\nCell resistance(Rcell)=%d kohm",ceil(R1),ceil(Rcell));
printf("\nQ1 is OFF when Rcell<=20 kohm")







